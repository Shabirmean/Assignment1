/*******************************************************************************
* DO NOT MODIFY - AUTO-GENERATED
* 
* Copyright (c) 2016, McGill University / Independent Robotics Inc.
* All rights reserved.
* 
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions are met:
* 
* 1. Redistributions of source code must retain the above copyright notice, this
*    list of conditions and the following disclaimer.
* 
* 2. Redistributions in binary form must reproduce the above copyright notice,
*    this list of conditions and the following disclaimer in the documentation
*    and/or other materials provided with the distribution.
* 
* 3. Neither the name of the copyright holder nor the names of its contributors
*    may be used to endorse or promote products derived from this software
*    without specific prior written permission.
* 
* THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
* AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
* IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE
* FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
* DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
* SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
* CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
* OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
*******************************************************************************/

#include <boost/bind.hpp>
#include <gazebo/gazebo.hh>
#include <gazebo/physics/physics.hh>
#include <gazebo/common/common.hh>
#include <aquacore/GetPeriodicLegCommand.h>
#include <aquacore/SetPeriodicLegCommand.h>
#include <aquacore/GetTargetLegAngles.h>
#include <aquacore/SetTargetLegAngles.h>
#include <stdio.h>

#include <ros/ros.h>
#include "aqua_gazebo/aqua_gazebo_plugin.h"
#include "aqua_gazebo/HydrodynamicsConfig.h"
#include "aqua_gazebo/ThrustParams.h"
#include "dynamic_reconfigure/server.h"

#define TWO_M_PI 2*M_PI
#define NUM_LEGS 6
const char* JOINT_NAMES[NUM_LEGS] =
       { "left_front_shoulder_joint",
	 "left_mid_shoulder_joint",
	 "left_rear_shoulder_joint",
	 "right_front_shoulder_joint",
	 "right_mid_shoulder_joint",
	 "right_rear_shoulder_joint"};

const char* LEG_NAMES[NUM_LEGS] =
       { "left_front_leg",
	 "left_mid_leg",
	 "left_rear_leg",
	 "right_front_leg",
	 "right_mid_leg",
	 "right_rear_leg"};

const char* SHOULDER_NAMES[NUM_LEGS] =
{ "left_front_shoulder",
    "left_mid_shoulder",
    "left_rear_shoulder",
    "right_front_shoulder",
    "right_mid_shoulder",
    "right_rear_shoulder"};

class AquaFlippersPlugin: public gazebo::ModelPlugin
{
  public:
    AquaFlippersPlugin();
    void Load(gazebo::physics::ModelPtr _parent, sdf::ElementPtr _sdf);
    void OnUpdate(const gazebo::common::UpdateInfo & info);
    bool SetPeriodicLegCommand_cb(aquacore::SetPeriodicLegCommand::Request  &req, aquacore::SetPeriodicLegCommand::Response &res);
    bool GetPeriodicLegCommand_cb(aquacore::GetPeriodicLegCommand::Request  &req, aquacore::GetPeriodicLegCommand::Response &res);
    bool SetTargetLegAngles_cb(aquacore::SetTargetLegAngles::Request  &req, aquacore::SetTargetLegAngles::Response &res);
    bool GetTargetLegAngles_cb(aquacore::GetTargetLegAngles::Request  &req, aquacore::GetTargetLegAngles::Response &res);
    void DynamicReconfigureCallback(aqua_gazebo::HydrodynamicsConfig &config, uint32_t level);

  private:
    gazebo::common::Time last_update_time;
    gazebo::physics::ModelPtr model;
    gazebo::physics::LinkPtr base_link;
    std::vector<gazebo::physics::LinkPtr> leg_links;
    std::vector<gazebo::physics::JointPtr> motor_joints;

    std::vector<gazebo::common::PID> pid;
    gazebo::event::ConnectionPtr updateConnection;

    ros::ServiceServer get_leg_command_service, set_leg_command_service;
    ros::ServiceServer get_target_angles_service, set_target_angles_service;

    ros::NodeHandle* nh_;
    ros::NodeHandle* nh_params_;

    std::string robot_namespace;

    boost::array<double,NUM_LEGS> target_angles;
    ignition::math::Vector3<double> pid_gains;
    
    boost::array<double,NUM_LEGS> frequency_cmd;
    boost::array<double,NUM_LEGS> phase_offsets_cmd;
    boost::array<double,NUM_LEGS> leg_offsets_cmd;
    boost::array<double,NUM_LEGS> amplitude_cmd;
    boost::array<double,NUM_LEGS> thrust;

    double fluid_density,surface_level;
    double thrustK1,thrustK2;
    ignition::math::Vector3<double> K1, K2;
    ignition::math::Vector3<double> leg_dims;
    int thrust_model;
    int angle_direction;

    ros::Publisher params_pub;
};

