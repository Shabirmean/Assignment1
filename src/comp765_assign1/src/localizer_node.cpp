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

#define METRE_TO_PIXEL_SCALE 50
#define FORWARD_SWIM_SPEED_SCALING 0.1
#define POSITION_GRAPHIC_RADIUS 20.0
#define HEADING_GRAPHIC_LENGTH 50.0

#define PARTICLE_COUNT 100
#define SEGMENTS 2
#define FORWARD_NOISE 0.05
#define TURN_NOISE 0.05
#define IMAGE_NOISE 5.0

struct noise {
  float forward_noise;
  float turn_noise;
  float image_noise;
};

struct particle {
  geometry_msgs::PoseStamped particle_location;
  noise noise_vals;
  float weight;
};


struct sensed_point {
  Point2f position;
  Mat rotation;
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
  particle particles[PARTICLE_COUNT];
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
    initParticles(FORWARD_NOISE, TURN_NOISE, IMAGE_NOISE);

    ROS_INFO( "localizer node constructed and subscribed." );
  }

  void initParticles(float forward_noise, float turn_noise, float image_noise){
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        int random_x = rand() % 800;
        int random_y = rand() % 2520;

        particles[i].particle_location.pose.position.x = random_x;
        particles[i].particle_location.pose.position.y = random_y;
        particles[i].noise_vals.forward_noise = forward_noise;
        particles[i].noise_vals.turn_noise = turn_noise;
        particles[i].noise_vals.image_noise = image_noise;
    }
  }

  // Check if the matrix is a rotational matrix
  bool isRotationMatrix(Mat &R){
    Mat Rt;
    transpose(R, Rt);
    Mat shouldBeIdentity = Rt * R;
    Mat I = Mat::eye(3,3, shouldBeIdentity.type());
    return  norm(I, shouldBeIdentity) < 1e-6;
  }

  
  float measurementProbability(particle new_particle, cv::Mat robot_image_mat){

    
  }


  void robotImageCallback( const sensor_msgs::ImageConstPtr& robot_img ){
    cv_bridge::CvImagePtr rcv_msg = cv_bridge::toCvCopy(robot_img, sensor_msgs::image_encodings::BGR8);
    cv::Mat robot_image_mat = rcv_msg->image;

    struct sensed_point new_point = featureExtractor(robot_image_mat);
    robot_sensed_pos = new_point.position;
    float sensed_x = robot_sensed_pos.x;
    float sensed_y = robot_sensed_pos.y;

    Mat rotation_mat = new_point.rotation;
    assert(isRotationMatrix(rotation_mat));

    float sy = sqrt(rotation_mat.at<double>(0,0) * rotation_mat.at<double>(0,0) +  
                        rotation_mat.at<double>(1,0) * rotation_mat.at<double>(1,0) );
    bool singular = sy < 1e-6;
    
    float theta_x, theta_y, theta_z;
    if (!singular) {
        theta_x = atan2(rotation_mat.at<double>(2,1) , rotation_mat.at<double>(2,2));
        theta_y = atan2(-rotation_mat.at<double>(2,0), sy);
        theta_z = atan2(rotation_mat.at<double>(1,0), rotation_mat.at<double>(0,0));
    } else {
        theta_x = atan2(-rotation_mat.at<double>(1,2), rotation_mat.at<double>(1,1));
        theta_y = atan2(-rotation_mat.at<double>(2,0), sy);
        theta_z = 0;
    }
    Vec3f eulerAngles = Vec3f(theta_x, theta_y, theta_z);

    // float xx = rotation_mat.at<float>(0,0);
    // float xy = rotation_mat.at<float>(0,1);
    // float xz = rotation_mat.at<float>(0,2);

    // float yx = rotation_mat.at<float>(1,0);
    // float yy = rotation_mat.at<float>(1,1);
    // float yz = rotation_mat.at<float>(1,2);

    // float zx = rotation_mat.at<float>(2,0);
    // float zy = rotation_mat.at<float>(2,1);
    // float zz = rotation_mat.at<float>(2,2);

    // float theta_x = atan2(zy, zz);                              //  Roll
    // float theta_y = atan2(-zx, sqrt(pow(zy, 2) + pow(zz, 2)));   // Pitch
    // float theta_z = atan2(yx, xx);                              // Yaw

    float totalWeight = 0.0;
    float max_weight = 0.0;

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        int particle_X_loc = particles[i].particle_location.pose.position.x;
        int particle_Y_loc = particles[i].particle_location.pose.position.y;

        double x_diff = sensed_x - particle_X_loc;
        double y_diff = sensed_y - particle_Y_loc;
        double eucledean_dist = pow(x_diff, 2) + pow(y_diff, 2);
        eucledean_dist = sqrt(eucledean_dist);

        //float weight = measurementProbability(particles[i], robot_image_mat);
        float weight = 1 / eucledean_dist;
        particles[i].weight = weight;
        totalWeight += weight;

        if (particles[i].weight > max_weight) {
          max_weight = particles[i].weight;
        }
    }


    particle new_particles[PARTICLE_COUNT];
    std::default_random_engine generator;
    std::uniform_int_distribution<> uniform_dis(0, PARTICLE_COUNT);
    int index = uniform_dis(generator);
    float beta = 0.0;

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      beta += uniform_dis(generator) * 2.0 * max_weight;
      while (beta > particles[index].weight) {
        beta -= particles[index].weight;
        index = (index + 1) % PARTICLE_COUNT;
      }
      new_particles[i] = particles[index];
    }

    max_weight = 0.0;
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particles[i] = new_particles[i];
      if (particles[i].weight > max_weight) {
          max_weight = particles[i].weight;
          max_weighted_particle = i;
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


    // int max_weighted_particle = -1;
    // float max_weight = 0.0;
    // // Update partiles when you receive a motion update
    // for (size_t i = 0; i < PARTICLE_COUNT; i++) {
    //   particle p = particles[i];
    //   int p_X_loc = p.particle_location.pose.position.x;
    //   int p_Y_loc = p.particle_location.pose.position.y;

    //   // p_X_loc = (p_X_loc - (localization_result_image.size().width/2)) / METRE_TO_PIXEL_SCALE;
    //   // p_Y_loc = (p_Y_loc - (localization_result_image.size().height/2)) / METRE_TO_PIXEL_SCALE;

    //   p_X_loc = p_X_loc + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
    //   p_Y_loc = p_Y_loc + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );

    //   // p_X_loc = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * p_X_loc;
    //   // p_Y_loc = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * p_Y_loc;

    //   particles[i].particle_location.pose.position.x = p_X_loc;
    //   particles[i].particle_location.pose.position.y = p_Y_loc;
    //   particles[i].particle_location.pose.orientation = command.pose.orientation;

    //   if (particles[i].weight > max_weight) {
    //     max_weight = particles[i].weight;
    //     max_weighted_particle = i;
    //   }
    // }




    // estimated_location.pose.position.x = (particles[max_weighted_particle].particle_location.pose.position.x - (localization_result_image.size().width/2)) / METRE_TO_PIXEL_SCALE;
    // estimated_location.pose.position.y = (particles[max_weighted_particle].particle_location.pose.position.y - (localization_result_image.size().height/2)) / METRE_TO_PIXEL_SCALE;
    // estimated_location.pose.orientation = command.pose.orientation;

    // The following three lines implement the basic motion model example
    estimated_location.pose.position.x = estimated_location.pose.position.x + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
    estimated_location.pose.position.y = estimated_location.pose.position.y + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );
    estimated_location.pose.orientation = command.pose.orientation;

    // The remainder of this function is sample drawing code to plot your answer on the map image.

    // This line resets the image to the original map so you can start drawing fresh each time.
    // Comment the one following line to plot your whole trajectory
    localization_result_image = map_image.clone();

    int estimated_robo_image_x = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.x;
    int estimated_robo_image_y = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.y;

    // int estimated_robo_image_x = particles[max_weighted_particle].particle_location.pose.position.x;
    // int estimated_robo_image_y =  particles[max_weighted_particle].particle_location.pose.position.y;

    int estimated_heading_image_x = estimated_robo_image_x + HEADING_GRAPHIC_LENGTH * cos(-target_yaw);
    int estimated_heading_image_y = estimated_robo_image_y + HEADING_GRAPHIC_LENGTH * sin(-target_yaw);

    // int robot_sensed_coord_x = static_cast<int>(robot_sensed_pos.x);
    // int robot_sensed_coord_y = static_cast<int>(robot_sensed_pos.y);

    cv::circle( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), POSITION_GRAPHIC_RADIUS, CV_RGB(250,0,0), -1);
    cv::line( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), cv::Point(estimated_heading_image_x, estimated_heading_image_y), CV_RGB(250,0,0), 10);
    // cv::circle( localization_result_image, cv::Point(robot_sensed_coord_x, robot_sensed_coord_y), POSITION_GRAPHIC_RADIUS, CV_RGB(92,255,76), -1);

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particle p = particles[i];
      int p_X_loc = p.particle_location.pose.position.x;
      int p_Y_loc = p.particle_location.pose.position.y;
      cv::circle( localization_result_image, cv::Point(p_X_loc, p_Y_loc), POSITION_GRAPHIC_RADIUS, CV_RGB(92,255,76), -1);
    }


    // printf("-- Motion Estimate : (%d, %d)\n", estimated_robo_image_x, estimated_robo_image_y);
    // printf("-- Image Estimate : (%d, %d)\n", robot_sensed_coord_x, robot_sensed_coord_y);
    // printf("===========================================================\n");

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

  //Point2f featureExtractor( cv::Mat robot_image_mat) {
  struct sensed_point featureExtractor( cv::Mat robot_image_mat) {
    //Mat img_object = imread( argv[1], CV_LOAD_IMAGE_GRAYSCALE );
    //Mat img_scene = imread( argv[2], CV_LOAD_IMAGE_GRAYSCALE );

    Mat img_object = robot_image_mat;
    Mat img_scene = map_image;

    // if( !img_object.data || !img_scene.data )
    // { std::cout<< " --(!) Error reading images " << std::endl; return NULL; }
    
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
    for( int i = 0; i < descriptors_object.rows; i++ )
    { double dist = matches[i].distance;
      if( dist < min_dist ) min_dist = dist;
      if( dist > max_dist ) max_dist = dist;
    }
    // printf("-- Max dist : %f \n", max_dist );
    // printf("-- Min dist : %f \n", min_dist );
    
    //-- Draw only "good" matches (i.e. whose distance is less than 3*min_dist )
    std::vector< DMatch > good_matches;
    for( int i = 0; i < descriptors_object.rows; i++ )
    { if( matches[i].distance <= 3*min_dist )
       { good_matches.push_back( matches[i]); }
    }
    // Mat img_matches;
    // drawMatches( img_object, keypoints_object, img_scene, keypoints_scene,
    //              good_matches, img_matches, Scalar::all(-1), Scalar::all(-1),
    //              std::vector<char>(), DrawMatchesFlags::NOT_DRAW_SINGLE_POINTS );
    
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
    Mat rotation_mat = cameraPoseFromHomography(H);
    
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
    //float image_center_x = (average_x1 + average_x2) / 2 + img_object.cols;
    float image_center_x = (average_x1 + average_x2) / 2;
    float image_center_y = (average_y1 + average_y2) / 2;

    // printf("-- Corner 1 : %f, %f\n", scene_corners[0].x, scene_corners[0].y);
    // printf("-- Corner 2 : %f, %f\n", scene_corners[1].x, scene_corners[1].y);
    // printf("-- Corner 3 : %f, %f\n", scene_corners[2].x, scene_corners[2].y);
    // printf("-- Corner 4 : %f, %f\n", scene_corners[3].x, scene_corners[3].y);
    // printf("-- Center : %f, %f\n", image_center_x, image_center_y);

    
    //-- Draw lines between the corners (the mapped object in the scene - image_2 )
    // line(img_matches, scene_corners[0] + Point2f(img_object.cols, 0), scene_corners[1] + Point2f(img_object.cols, 0), Scalar(0, 255, 0), 4);
    // line(img_matches, scene_corners[1] + Point2f(img_object.cols, 0), scene_corners[2] + Point2f(img_object.cols, 0), Scalar(0, 255, 0), 4);
    // line(img_matches, scene_corners[2] + Point2f(img_object.cols, 0), scene_corners[3] + Point2f(img_object.cols, 0), Scalar(0, 255, 0), 4);
    // line(img_matches, scene_corners[3] + Point2f(img_object.cols, 0), scene_corners[0] + Point2f(img_object.cols, 0), Scalar(0, 255, 0), 4);
    // circle( img_matches, Point( image_center_x, image_center_y ), 10.0, Scalar( 0, 0, 255 ), 1, 8 );
    

    //-- Show detected matches
    // imshow( "Good Matches & Object detection", img_matches );
    // waitKey(0);

    struct sensed_point new_point;
    new_point.position = Point2f(image_center_x, image_center_y);
    new_point.rotation = rotation_mat;
    return new_point;
  }


  //void cameraPoseFromHomography(const Mat& H, Mat& pose) { 
  Mat cameraPoseFromHomography(const Mat& H) { 
    Mat rotation = Mat::eye(3, 3, CV_32FC1);
    Mat pose = Mat::eye(3, 4, CV_32FC1);      // 3x4 matrix, the camera pose
    float norm1 = (float)norm(H.col(0));  
    float norm2 = (float)norm(H.col(1));  
    float tnorm = (norm1 + norm2) / 2.0f; // Normalization value

    Mat p1 = H.col(0);       // Pointer to first column of H
    Mat p2 = pose.col(0);    // Pointer to first column of pose (empty)

    cv::normalize(p1, p2);   // Normalize the rotation, and copies the column to pose

    p1 = H.col(1);           // Pointer to second column of H
    p2 = pose.col(1);        // Pointer to second column of pose (empty)

    cv::normalize(p1, p2);   // Normalize the rotation and copies the column to pose

    p1 = pose.col(0);
    p2 = pose.col(1);

    Mat p3 = p1.cross(p2);   // Computes the cross-product of p1 and p2
    Mat c2 = pose.col(2);    // Pointer to third column of pose
    p3.copyTo(c2);       // Third column is the crossproduct of columns one and two

    pose.col(3) = H.col(2) / tnorm;  //vector t [R|t] is the last column of pose


    Mat r0 = rotation.col(0);
    Mat r1 = rotation.col(1);
    Mat r2 = rotation.col(2);

    pose.col(0).copyTo(r0);
    pose.col(1).copyTo(r1);
    pose.col(2).copyTo(r2);
    return rotation;
  }
};


int main(int argc, char** argv){
  ros::init(argc, argv, "localizer");
  Localizer my_loc(argc, argv);
  my_loc.spin();
}




