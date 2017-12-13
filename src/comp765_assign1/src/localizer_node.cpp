#include <ros/ros.h>
#include <ros/package.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/transform_listener.h>

#include <stdio.h>
#include <iostream>
#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/features2d.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/calib3d.hpp"
#include "opencv2/xfeatures2d.hpp"
// #include <conio.h>
#include <math.h>

using namespace cv;
using namespace cv::xfeatures2d;
using namespace std;

#define _USE_MATH_DEFINES
#define METRE_TO_PIXEL_SCALE 50
#define FORWARD_SWIM_SPEED_SCALING 0.15
#define POSITION_GRAPHIC_RADIUS 20.0
#define HEADING_GRAPHIC_LENGTH 50.0

#define PARTICLE_COUNT 500
#define SEGMENTS 2
#define FORWARD_NOISE 0.4
#define TURN_NOISE 0.314  // 10% Noise
#define SENSE_NOISE 50      

struct PARTICLE_STATE {
  Point2f position;
  double orientation;
};

struct NOISE {
  float motion_noise;
  float sense_noise;
};

struct UNNORMALIZED_WEIGHTS {
  double distance_weight;
  double yaw_weight;
};

struct PARTICLE {
  struct PARTICLE_STATE state;
  struct UNNORMALIZED_WEIGHTS unnormalized_weights;
  double weight;
  double prev_dist_weight;
  float swim_speed_scale;
  NOISE noise_vals;
};

// Class Localizer is a sample stub that you can build upon for your implementation
// (advised but optional: starting from scratch is also fine)
//
class Localizer {

public:
  ros::NodeHandle nh;
  image_transport::Publisher pub;
  image_transport::Subscriber gt_img_sub;
  image_transport::Subscriber robot_img_sub;
  ros::Publisher estimate_pub;

  ros::Subscriber motion_command_sub;
  geometry_msgs::PoseStamped estimated_location;

  cv::Mat map_image;
  cv::Mat localization_result_image;
  PARTICLE particles[PARTICLE_COUNT];
  Point2f robot_sensed_pos = Point2f(0, 0);
  int max_weighted_particle = -1;

  Localizer( int argc, char** argv ){

    image_transport::ImageTransport it(nh);
    pub = it.advertise("/assign1/localization_debug_image", 1);
    estimate_pub = nh.advertise<geometry_msgs::PoseStamped>( "/assign1/localization_estimate",1);
    std::string ag_path = ros::package::getPath("aqua_gazebo");
    map_image = cv::imread((ag_path+"/materials/fishermans_small.png").c_str(), CV_LOAD_IMAGE_COLOR);

    estimated_location.pose.position.x = 0;
    estimated_location.pose.position.y = 0;

    localization_result_image = map_image.clone();

    robot_img_sub = it.subscribe("/aqua/back_down/image_raw", 1, &Localizer::robotImageCallback, this);
    motion_command_sub = nh.subscribe<geometry_msgs::PoseStamped>("/aqua/target_pose", 1, &Localizer::motionCommandCallback, this);
  
    // initialize particles
    initParticles(TURN_NOISE, SENSE_NOISE);

    ROS_INFO( "localizer node constructed and subscribed." );
  }


  void initParticles(float motion_noise, float sense_noise){
    std::uniform_real_distribution<double> dist(-M_PI, M_PI);
    std::mt19937 rng; 
    rng.seed(std::random_device{}());

    // std::uniform_real_distribution<double> dist_speed(-M_PI, M_PI);
    // std::mt19937 rng_speed; 
    // rng_speed.seed(std::random_device{}());

    // std::default_random_engine generator_forward;
    // std::normal_distribution<double> distribution_forward(FORWARD_SWIM_SPEED_SCALING, FORWARD_NOISE);

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        int random_x = rand() % 800;
        int random_y = rand() % 2520;
        double random_yaw = dist(rng);
        // double speed_scaling_factor = distribution_forward(generator_forward);

        particles[i].state.position.x = random_x;
        particles[i].state.position.y = random_y;
        particles[i].state.orientation = random_yaw;
        particles[i].noise_vals.motion_noise = motion_noise;
        particles[i].noise_vals.sense_noise = sense_noise;

        particles[i].weight = 0.0;
        particles[i].prev_dist_weight = 0.0;
        particles[i].swim_speed_scale = FORWARD_SWIM_SPEED_SCALING;
    }
  }


  double gaussianProbability(double mu, double sigma, double x){
    return exp(-1.0 * (pow((x - mu) , 2) / pow(sigma, 2)) / 2.0) / sqrt(2.0 * M_PI * pow(sigma, 2));   
  }
  

  void robotImageCallback( const sensor_msgs::ImageConstPtr& robot_img ){
    cv_bridge::CvImagePtr rcv_msg = cv_bridge::toCvCopy(robot_img, sensor_msgs::image_encodings::BGR8);
    cv::Mat robot_image_mat = rcv_msg->image;

    struct PARTICLE_STATE new_state = getSensedLocationAndPose(robot_image_mat);
    robot_sensed_pos = new_state.position;
    float sensed_x = robot_sensed_pos.x;
    float sensed_y = robot_sensed_pos.y;
    double sensed_yaw = new_state.orientation;

    double total_distance_weight = 0.0;
    double total_unnormalized_weight = 0.0;
    double max_weight = 0.0;

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      int particle_X_loc = particles[i].state.position.x;
      int particle_Y_loc = particles[i].state.position.y;

      double x_diff = sensed_x - particle_X_loc;
      double y_diff = sensed_y - particle_Y_loc;
      double eucledean_dist = pow(x_diff, 2) + pow(y_diff, 2);
      eucledean_dist = sqrt(eucledean_dist);

      double dis_weight = gaussianProbability(0.0, SENSE_NOISE, eucledean_dist);
      total_distance_weight += dis_weight;
      particles[i].unnormalized_weights.distance_weight = dis_weight;
    }

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      double particle_dis_weight = particles[i].unnormalized_weights.distance_weight;
      double normalized_distance_weight = particle_dis_weight / total_distance_weight;

      double previous_distance_weight = particles[i].prev_dist_weight;
      double weight_ratio = previous_distance_weight / normalized_distance_weight;

      if (weight_ratio < 0) {
        particles[i].swim_speed_scale *= 0.9; 
      } else if (weight_ratio > 1) {
        particles[i].swim_speed_scale *= 1.1; 
      }
      particles[i].prev_dist_weight = normalized_distance_weight;
      
      double particle_yaw = particles[i].state.orientation;
      double yaw_difference = particle_yaw - sensed_yaw;
      double yaw_weight = gaussianProbability(0.0, TURN_NOISE, yaw_difference);
      double unnormalized_distance_yaw = normalized_distance_weight * yaw_weight;
      
      particles[i].unnormalized_weights.yaw_weight = unnormalized_distance_yaw;
      total_unnormalized_weight += unnormalized_distance_yaw;
    }

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      double unnormalized_distance_yaw = particles[i].unnormalized_weights.yaw_weight;
      double normalized_weight = unnormalized_distance_yaw / total_unnormalized_weight;
      particles[i].weight = normalized_weight;
      if (normalized_weight > max_weight) {
        max_weight = normalized_weight;
      }
    }

    PARTICLE new_particles[PARTICLE_COUNT];
    std::default_random_engine generator;
    std::uniform_int_distribution<> uniform_dis(0, PARTICLE_COUNT);
    int index = uniform_dis(generator);
    double beta = 0.0;

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      beta += uniform_dis(generator) * 2.0 * max_weight;
      while (beta > particles[index].weight) {
        beta -= particles[index].weight;
        index = (index + 1) % PARTICLE_COUNT;
      }
      new_particles[i] = particles[index];
    }

    int max_weighted_particle_idx = -1;
    max_weight = 0.0;

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particles[i] = new_particles[i];
      if (particles[i].weight > max_weight) {
        max_weight = particles[i].weight;
        max_weighted_particle_idx = i;
      }
    }
  }

  // Function motionCommandCallback is a example of how to work with Aqua's motion commands (your view on the odometry).
  // The initial version simply integrates the commands over time to make a very rough location estimate.
  // TODO: You must improve it to work with the localizer you implement.
  //
  // Note the somewhat unique meaning of fields in motion_command
  //    motion_command
  //      pose
  //        position
  //          x - requested forward swim effort in a unitless number ranging from 0.0 to 1.0. You must translate this into
  //              a velocity estimate in some way. Currently a simple constant is used.
  //          y - requested up/down swim effort. Not used in this assignment
  //          z - unused
  //        orientation - A quaternion that represents the desired body orientation w.r.t. global frame. Note that
  //                      Aqua's controller will not achieve this orientation perfectly, so you must consider that
  //                      this is only a noisy estimate of the robot's orientation (correct for it with your filter!)
  //
  // Note that we use negative angles because the geometry of the map image is formed with its Z axis pointing downwards
  // (the camera is looking at the ocean floor)
  //
  void motionCommandCallback(const geometry_msgs::PoseStamped::ConstPtr& motion_command ){

    geometry_msgs::PoseStamped command = *motion_command;
    double target_roll, target_pitch, target_yaw;
    tf::Quaternion target_orientation;
    tf::quaternionMsgToTF(command.pose.orientation, target_orientation);
    tf::Matrix3x3(target_orientation).getEulerYPR( target_yaw, target_pitch, target_roll );

    std::default_random_engine generator_turn;
    std::normal_distribution<double> distribution_turn(0.0 , TURN_NOISE);

    // std::default_random_engine generator_forward;
    // std::normal_distribution<double> distribution_forward(FORWARD_SWIM_SPEED_SCALING, FORWARD_NOISE);
    // double speed_scaling_factor = distribution_forward(generator_forward);

    int max_weighted_particle = -1;
    double max_weight_particle_yaw = 0.0;
    float max_weight = 0.0;

    // Update partiles when you receive a motion update
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      PARTICLE p = particles[i];
      int p_X_loc = p.state.position.x;
      int p_Y_loc = p.state.position.y;
      double particle_yaw = p.state.orientation;
      double motion_noise = distribution_turn(generator_turn);
      double noisy_turn = target_yaw + motion_noise;
      particle_yaw = motion_noise + target_yaw;

      double speed_scaling_factor = p.swim_speed_scale;
      
      // p_X_loc = (p_X_loc - (localization_result_image.size().width/2)) / METRE_TO_PIXEL_SCALE;
      // p_Y_loc = (p_Y_loc - (localization_result_image.size().height/2)) / METRE_TO_PIXEL_SCALE;

      double motion_units_x = METRE_TO_PIXEL_SCALE * speed_scaling_factor * command.pose.position.x * cos( -particle_yaw );
      double motion_units_y = METRE_TO_PIXEL_SCALE * speed_scaling_factor * command.pose.position.x * sin( -particle_yaw );

      p_X_loc = p_X_loc + motion_units_x;
      p_Y_loc = p_Y_loc + motion_units_y;

      // p_X_loc = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * p_X_loc;
      // p_Y_loc = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * p_Y_loc;

      particles[i].state.position.x = p_X_loc;
      particles[i].state.position.y = p_Y_loc;
      particles[i].state.orientation = particle_yaw;

      if (particles[i].weight > max_weight) {
        max_weight = particles[i].weight;
        max_weighted_particle = i;
        max_weight_particle_yaw = particle_yaw;
      }
    }

    // The following three lines implement the basic motion model example
    estimated_location.pose.position.x = estimated_location.pose.position.x + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
    estimated_location.pose.position.y = estimated_location.pose.position.y + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );
    estimated_location.pose.orientation = command.pose.orientation;

    // The remainder of this function is sample drawing code to plot your answer on the map image.

    // This line resets the image to the original map so you can start drawing fresh each time.
    // Comment the one following line to plot your whole trajectory
    localization_result_image = map_image.clone();

    // int estimated_robo_image_x = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.x;
    // int estimated_robo_image_y = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.y;

    // int estimated_heading_image_x = estimated_robo_image_x + HEADING_GRAPHIC_LENGTH * cos(-target_yaw);
    // int estimated_heading_image_y = estimated_robo_image_y + HEADING_GRAPHIC_LENGTH * sin(-target_yaw);

    // cv::circle( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), POSITION_GRAPHIC_RADIUS, CV_RGB(250,0,0), -1);
    // cv::line( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), cv::Point(estimated_heading_image_x, estimated_heading_image_y), CV_RGB(250,0,0), 10);
    // cv::circle( localization_result_image, cv::Point(robot_sensed_coord_x, robot_sensed_coord_y), POSITION_GRAPHIC_RADIUS, CV_RGB(92,255,76), -1);

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      PARTICLE p = particles[i];
      int p_X_loc = p.state.position.x;
      int p_Y_loc = p.state.position.y;
      double p_yaw = p.state.orientation;

      int particle_heading_image_x = p_X_loc + HEADING_GRAPHIC_LENGTH * cos(-p_yaw);
      int particle_heading_image_y = p_Y_loc + HEADING_GRAPHIC_LENGTH * sin(-p_yaw);

      cv::circle( localization_result_image, cv::Point(p_X_loc, p_Y_loc), 10, CV_RGB(92,255,76), -1);
      cv::line( localization_result_image, cv::Point(p_X_loc, p_Y_loc), cv::Point(particle_heading_image_x, particle_heading_image_y), CV_RGB(250,0,0), 10);
    }

    // estimated_location.pose.position.x = particles[max_weighted_particle].state.position.x - (localization_result_image.size().width/2 / METRE_TO_PIXEL_SCALE);
    // estimated_location.pose.position.y = particles[max_weighted_particle].state.position.y - (localization_result_image.size().height/2 / METRE_TO_PIXEL_SCALE);
    // estimated_location.pose.orientation.z = particles[max_weighted_particle].state.orientation;
    estimate_pub.publish( estimated_location );
  }

  // This function publishes your localization result image and spins ROS to execute its callbacks
  void spin(){

    ros::Rate loop_rate(30);
    while (nh.ok()) {
      sensor_msgs::ImagePtr msg = cv_bridge::CvImage(std_msgs::Header(), "bgr8", localization_result_image).toImageMsg();
      pub.publish(msg);

      ros::spinOnce();
      loop_rate.sleep();
    }
  }

  struct PARTICLE_STATE getSensedLocationAndPose( cv::Mat robot_image_mat) {
    Mat img_object = robot_image_mat;
    Mat img_scene = map_image;

    //-- Step 1: Detect the keypoints and extract descriptors using SURF
    int minHessian = 400;
    
    Ptr<SURF> detector = SURF::create( minHessian );
    std::vector<KeyPoint> keypoints_object, keypoints_scene;
    Mat descriptors_object, descriptors_scene;
    
    detector->detectAndCompute( img_object, Mat(), keypoints_object, descriptors_object );
    detector->detectAndCompute( img_scene, Mat(), keypoints_scene, descriptors_scene );
    
    //-- Step 2: Matching descriptor vectors using FLANN matcher
    FlannBasedMatcher matcher;
    std::vector< DMatch > matches;
    matcher.match( descriptors_object, descriptors_scene, matches );
    double max_dist = 0; double min_dist = 100;
    
    //-- Quick calculation of max and min distances between keypoints
    for( int i = 0; i < descriptors_object.rows; i++ ) { 
      double dist = matches[i].distance;
      if( dist < min_dist ) min_dist = dist;
      if( dist > max_dist ) max_dist = dist;
    }

    //-- Draw only "good" matches (i.e. whose distance is less than 3*min_dist )
    std::vector< DMatch > good_matches;
    for( int i = 0; i < descriptors_object.rows; i++ )
    { if( matches[i].distance <= 3*min_dist )
       { good_matches.push_back( matches[i]); }
    }

    //-- Localize the object
    std::vector<Point2f> obj;
    std::vector<Point2f> scene;
    for( size_t i = 0; i < good_matches.size(); i++ )
    {
      //-- Get the keypoints from the good matches
      obj.push_back( keypoints_object[ good_matches[i].queryIdx ].pt );
      scene.push_back( keypoints_scene[ good_matches[i].trainIdx ].pt );
    }
    Mat H = findHomography( obj, scene, RANSAC );
    Vec3f eulerAngles = rotationMatrixToEulerAngles(H);
    double sensed_yaw = convertYawFromCameraPoseToROSPlane(eulerAngles[2]);

    //-- Get the corners from the image_1 ( the object to be "detected" )
    std::vector<Point2f> obj_corners(4);
    obj_corners[0] = cvPoint(0,0); obj_corners[1] = cvPoint( img_object.cols, 0 );
    obj_corners[2] = cvPoint( img_object.cols, img_object.rows ); obj_corners[3] = cvPoint( 0, img_object.rows );
    std::vector<Point2f> scene_corners(4);
    perspectiveTransform( obj_corners, scene_corners, H);
    
    float average_x1 = (scene_corners[0].x + scene_corners[1].x) / 2;
    float average_x2 = (scene_corners[2].x + scene_corners[3].x) / 2;
    float average_y1 = (scene_corners[0].y + scene_corners[3].y) / 2;
    float average_y2 = (scene_corners[1].y + scene_corners[2].y) / 2;
    float image_center_x = (average_x1 + average_x2) / 2;
    float image_center_y = (average_y1 + average_y2) / 2;

    struct PARTICLE_STATE new_state;
    new_state.position = Point2f(image_center_x, image_center_y);
    new_state.orientation = sensed_yaw;
    return new_state;
  }


  double convertYawFromCameraPoseToROSPlane(double camera_yaw){
    double yawInROSPlane = 0.0;
    double yawInDegrees = (180.0 / M_PI) * camera_yaw;

    if (yawInDegrees > 0.0 && yawInDegrees < 90.0) {
      yawInROSPlane = 90.0 - yawInDegrees;
    } else if (yawInDegrees > 90.0 && yawInDegrees < 180.0) {
      yawInROSPlane = -1.0 * (yawInDegrees - 90.0);
    } else if (yawInDegrees < 0.0 && yawInDegrees > -90.0) {
      yawInROSPlane = 90.0 + (-1.0 * yawInDegrees);
    } else if (yawInDegrees < -90.0 && yawInDegrees > -180.0) {
      yawInROSPlane = -180.0 + ((-1.0 * yawInDegrees) - 90.0);
    }

    yawInROSPlane = (M_PI / 180.0) * yawInROSPlane;
    return yawInROSPlane;
  }


  // Check if the matrix is a rotational matrix
  bool isRotationMatrix(Mat &R){
    Mat Rt;
    transpose(R, Rt);
    Mat shouldBeIdentity = Rt * R;
    Mat I = Mat::eye(3,3, shouldBeIdentity.type());
    return  norm(I, shouldBeIdentity) < 1e-6;
  }


  Vec3f rotationMatrixToEulerAngles(Mat &rotation_mat){
    // assert(isRotationMatrix(rotation_mat));
    float sy = sqrt(rotation_mat.at<double>(0,0) * rotation_mat.at<double>(0,0) +  
                        rotation_mat.at<double>(1,0) * rotation_mat.at<double>(1,0) );
    bool singular = sy < 1e-6;
    
    double theta_x, theta_y, theta_z;
    if (!singular) {
        theta_x = atan2(rotation_mat.at<double>(2,1) , rotation_mat.at<double>(2,2));
        theta_y = atan2(-rotation_mat.at<double>(2,0), sy);
        theta_z = atan2(rotation_mat.at<double>(1,0), rotation_mat.at<double>(0,0));
    } else {
        theta_x = atan2(-rotation_mat.at<double>(1,2), rotation_mat.at<double>(1,1));
        theta_y = atan2(-rotation_mat.at<double>(2,0), sy);
        theta_z = 0;
    }
    return Vec3f(theta_x, theta_y, theta_z);
  }
};


int main(int argc, char** argv){
  ros::init(argc, argv, "localizer");
  Localizer my_loc(argc, argv);
  my_loc.spin();
}




