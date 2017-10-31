#include <ros/ros.h>
#include <ros/package.h>
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <cv_bridge/cv_bridge.h>
#include <geometry_msgs/PoseStamped.h>
#include <tf/transform_listener.h>


#define METRE_TO_PIXEL_SCALE 50
#define FORWARD_SWIM_SPEED_SCALING 0.1
#define POSITION_GRAPHIC_RADIUS 20.0
#define HEADING_GRAPHIC_LENGTH 50.0
#define PARTICLE_COUNT 1000
#define SEGMENTS 2

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

  Localizer( int argc, char** argv ){

    image_transport::ImageTransport it(nh);
    pub = it.advertise("/assign1/localization_debug_image", 1);
    estimate_pub = nh.advertise<geometry_msgs::PoseStamped>( "/assign1/localization_estimate",1);
    std::string ag_path = ros::package::getPath("aqua_gazebo");
    map_image = cv::imread((ag_path+"/materials/fishermans_small.png").c_str(), CV_LOAD_IMAGE_COLOR);

    //map_image.cols = 800 x
    //map_image.rows = 2520 y

    estimated_location.pose.position.x = 0;
    estimated_location.pose.position.y = 0;

    localization_result_image = map_image.clone();

    robot_img_sub = it.subscribe("/aqua/back_down/image_raw", 1, &Localizer::robotImageCallback, this);
    motion_command_sub = nh.subscribe<geometry_msgs::PoseStamped>("/aqua/target_pose", 1, &Localizer::motionCommandCallback, this);

    // initialize particles
    initParticles(0.05, 0.05, 5.0);

    ROS_INFO( "localizer node constructed and subscribed." );
  }

  void initParticles(float forward_noise, float turn_noise, float image_noise){
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        int random_x = rand() % 800 + (-400);
        int random_y = rand() % 2520 + (-1260);
        particles[i].particle_location.pose.position.x = random_x;
        particles[i].particle_location.pose.position.y = random_y;
        particles[i].noise_vals.forward_noise = forward_noise;
        particles[i].noise_vals.turn_noise = turn_noise;
        particles[i].noise_vals.image_noise = image_noise;
    }
  }

  float measurementProbability(particle new_particle, cv::Mat robot_image_mat){
    int img_rows = robot_image_mat.rows;
    int half_len = img_rows/2;
    int segment_len = img_rows / SEGMENTS;

    float particle_img_noise = new_particle.noise_vals.image_noise;
    int x_location = new_particle.particle_location.pose.position.x;
    int y_location = new_particle.particle_location.pose.position.y;

    int pBoundary_X_strt_idx;
    int pBoundary_X_end_idx;
    int pBoundary_Y_strt_idx;
    int pBoundary_Y_end_idx;

    if (x_location - half_len < 0) {
      pBoundary_X_strt_idx = 0;
    } else {
      pBoundary_X_strt_idx = x_location - half_len;
    }

    if (x_location + half_len > 800) {
      pBoundary_X_end_idx = 800;
    } else {
      pBoundary_X_end_idx = x_location + half_len;
    }

    if (y_location - half_len < 0) {
      pBoundary_Y_strt_idx = 0;
    } else {
      pBoundary_Y_strt_idx = y_location - half_len;
    }

    if (y_location + half_len > 2520) {
      pBoundary_Y_end_idx = 2520;
    } else {
      pBoundary_Y_end_idx = y_location + half_len;
    }

    if (pBoundary_X_end_idx == 800) {
      pBoundary_X_strt_idx = 400;
    }

    if (pBoundary_Y_end_idx == 2520) {
      pBoundary_Y_strt_idx = 2120;
    }

    cv::Rect myROI(pBoundary_X_strt_idx, pBoundary_Y_strt_idx, 400, 400);
    cv::Mat particle_sur = map_image(myROI);

    float image_diff = 0;
    for (size_t i = 0; i < 400; i++) {
      for (size_t j = 0; j < 400; j++) {
        cv::Point3_<uchar>* img_measured = robot_image_mat.ptr<cv::Point3_<uchar> >(j, i);
        cv::Point3_<uchar>* img_particle = particle_sur.ptr<cv::Point3_<uchar> >(j, i);
        float B_diff = abs(img_measured->x - img_particle->x) / 255.0;
        float G_diff = abs(img_measured->y - img_particle->y) / 255.0;
        float R_diff = abs(img_measured->z - img_particle->z) / 255.0;
        float totalDif = B_diff + G_diff + R_diff;
        image_diff += totalDif;
      }
    }
    image_diff = (image_diff * 100) / (400 * 400 * 3);
    //std::normal_distribution<double> distribution(image_diff, particle_img_noise);
    //printf("Particle at <%d, %d> Diff is %.2f\n", x_location, y_location, image_diff);
    return (100 - image_diff);
  }


  /*float evaluatePerformance(){
    float sum = 0.0;
    x_world_size = 800;
    y_world_size = 2520;
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particle p = particles[i];
      int x_location = p.particle_location.pose.position.x;
      int y_location = p.particle_location.pose.position.y;
      dx = (x_location - r.x + (x_world_size/2.0)) % x_world_size - (x_world_size/2.0)
      dy = (y_location - r.y + (y_world_size/2.0)) % y_world_size - (y_world_size/2.0)
      err = sqrt(dx * dx + dy * dy)
    }
  }*/

  void robotImageCallback( const sensor_msgs::ImageConstPtr& robot_img ){
    // Update particle weights based on the probability of the accuracy of
    // the new measurment apporimated to a Normal Distribution.
    cv_bridge::CvImagePtr rcv_msg = cv_bridge::toCvCopy(robot_img, sensor_msgs::image_encodings::BGR8);
    cv::Mat robot_image_mat = rcv_msg->image;

    float totalWeight = 0.0;
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        float weight = measurementProbability(particles[i], robot_image_mat);
        particles[i].weight = weight;
        totalWeight += weight;
    }

    float max_weight = 0.0;
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
        particles[i].weight = (particles[i].weight / totalWeight);
        //printf("%.8f\n", particles[i].weight);
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

    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particles[i] = new_particles[i];
    }

    //localization_result_image = map_image.clone();
    // for (size_t i = 0; i < PARTICLE_COUNT; i++) {
    //   particle p = particles[i];
    //   int x_location = p.particle_location.pose.position.x;
    //   int y_location = p.particle_location.pose.position.y;
    //   int estimated_robo_image_x = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * x_location;
    //   int estimated_robo_image_y = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * y_location;
    //   cv::circle( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), POSITION_GRAPHIC_RADIUS, CV_RGB(250,0,0), -1);
    //   estimate_pub.publish( estimated_location );
    // }
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

    // The following three lines implement the basic motion model example
    //estimated_location.pose.position.x = estimated_location.pose.position.x + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
    //estimated_location.pose.position.y = estimated_location.pose.position.y + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );
    //estimated_location.pose.orientation = command.pose.orientation;

    int max_weighted_particle = -1;
    float max_weight = 0.0;
    // Update partiles when you receive a motion update
    for (size_t i = 0; i < PARTICLE_COUNT; i++) {
      particle p = particles[i];
      int p_X_loc = p.particle_location.pose.position.x;
      int p_Y_loc = p.particle_location.pose.position.y;
      p_X_loc = p_X_loc + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * cos( -target_yaw );
      p_Y_loc = p_Y_loc + FORWARD_SWIM_SPEED_SCALING * command.pose.position.x * sin( -target_yaw );

      particles[i].particle_location.pose.position.x = p_X_loc;
      particles[i].particle_location.pose.position.y = p_Y_loc;
      particles[i].particle_location.pose.orientation = command.pose.orientation;

      if (particles[i].weight > max_weight) {
        max_weight = particles[i].weight;
        max_weighted_particle = i;
      }
    }

    estimated_location.pose.position.x = particles[max_weighted_particle].particle_location.pose.position.x;
    estimated_location.pose.position.y = particles[max_weighted_particle].particle_location.pose.position.y;
    estimated_location.pose.orientation = particles[max_weighted_particle].particle_location.pose.orientation;

    // The remainder of this function is sample drawing code to plot your answer on the map image.

    // This line resets the image to the original map so you can start drawing fresh each time.
    // Comment the one following line to plot your whole trajectory
    localization_result_image = map_image.clone();

    int estimated_robo_image_x = localization_result_image.size().width/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.x;
    int estimated_robo_image_y = localization_result_image.size().height/2 + METRE_TO_PIXEL_SCALE * estimated_location.pose.position.y;

    int estimated_heading_image_x = estimated_robo_image_x + HEADING_GRAPHIC_LENGTH * cos(-target_yaw);
    int estimated_heading_image_y = estimated_robo_image_y + HEADING_GRAPHIC_LENGTH * sin(-target_yaw);

    cv::circle( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), POSITION_GRAPHIC_RADIUS, CV_RGB(250,0,0), -1);
    cv::line( localization_result_image, cv::Point(estimated_robo_image_x, estimated_robo_image_y), cv::Point(estimated_heading_image_x, estimated_heading_image_y), CV_RGB(250,0,0), 10);

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
};

int main(int argc, char** argv){

  ros::init(argc, argv, "localizer");
  Localizer my_loc(argc, argv);
  my_loc.spin();
}
