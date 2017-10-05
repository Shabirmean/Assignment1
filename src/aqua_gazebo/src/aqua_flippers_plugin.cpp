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

#include <aqua_gazebo/aqua_flippers_plugin.h>

AquaFlippersPlugin::AquaFlippersPlugin(){

}

void AquaFlippersPlugin::Load(gazebo::physics::ModelPtr _parent, sdf::ElementPtr _sdf){
    ROS_INFO("Loading the Aqua Flippers plugin (thruster model)");
    // Make sure the ROS node for Gazebo has already been initialized
    if (!ros::isInitialized()){
        ROS_FATAL_STREAM("A ROS node for Gazebo has not been initialized, unable to load plugin. "
        << "Make sure gzserver is running, or load the Gazebo system plugin 'libgazebo_ros_api_plugin.so')");
        return;
    }

    model = _parent;
    angle_direction = -1;
    target_angles.fill(0.0);
    frequency_cmd.fill(0.0);
    amplitude_cmd.fill(0.0);
    leg_offsets_cmd.fill(0.0);
    phase_offsets_cmd.fill(0.0);
    thrust.fill(0.0);

    if (_sdf->HasElement("robotNamespace"))
        robot_namespace = _sdf->Get<std::string>("robotNamespace") + "/";
    else{
        ROS_INFO("aqua flippers plugin missing <robotNameSpace>, defaults to /aqua");
        robot_namespace = "aqua";
    }

    if (_sdf->HasElement("motorPidGains")){
        pid_gains = _sdf->Get< ignition::math::Vector3<double> >("motorPidGains");
    } else {
        pid_gains = ignition::math::Vector3<double>(0.0,0.0,0.0);
        ROS_INFO_STREAM("aqua flippers plugin missing <motorPidGains>, defaults to "<<pid_gains);
    }

    if (_sdf->HasElement("surfaceLevel")){
        surface_level = _sdf->Get<double>("surfaceLevel");
    } else {
        surface_level = 0.0;
        ROS_INFO("aqua hydrpdynamics plugin missing <surfaceLevel>, defaults to %f", surface_level);
    }
    if (_sdf->HasElement("fluidDensity")){
        fluid_density = _sdf->Get<double>("fluidDensity");
    } else {
        fluid_density = 999.97;
        ROS_INFO("aqua flippers plugin missing <fluidDensity>, defaults to %f", fluid_density);
    }

    if (_sdf->HasElement("thrustModel")){
        thrust_model = _sdf->Get<int>("thrustModel");
    } else {
        thrust_model = 0;
        ROS_INFO("aqua flippers plugin missing <thrustModel>, defaults to %d", thrust_model);
    }
    /*
    if (_sdf->HasElement("momentK1")){
        K1 = _sdf->Get< ignition::math::Vector3<double> >("momentK1");
    } else {
        K1 = ignition::math::Vector3<double>(0.0,0.0,0.0);
        ROS_INFO_STREAM("aqua flippers plugin missing <momentK1>, defaults to "<<K1);
    }
    if (_sdf->HasElement("momentK2")){
        K2 = _sdf->Get< ignition::math::Vector3<double> >("momentK2");
    } else {
        K2 = ignition::math::Vector3<double>(0.0,0.0,0.0);
        ROS_INFO_STREAM("aqua flippers plugin missing <momentK2>, defaults to "<<K2);
    }*/

    if (_sdf->HasElement("flipperFrequency")){
        double freq = _sdf->Get<double>("flipperFrequency");
        frequency_cmd.fill(freq);
    } else {
        ROS_INFO("aqua flippers plugin missing <flipperFrequency>, defaults to 0");
    }
    if (_sdf->HasElement("flipperAmplitude")){
        double amp = _sdf->Get<double>("flipperAmplitude");
        amplitude_cmd.fill(amp);
    } else {
        ROS_INFO("aqua flippers plugin missing <flipperAmplitude>, defaults to 0");
    }
    if (_sdf->HasElement("flipperAngleOffset")){
        double ang = _sdf->Get<double>("flipperAngleOffset");
        leg_offsets_cmd.fill(ang);
    } else {
        ROS_INFO("aqua flippers plugin missing <flipperAngleOffset>, defaults to 0");
    }
    pid.resize(NUM_LEGS);
    for (size_t i=0;i<NUM_LEGS;++i) {
        pid[i].Init(pid_gains.X(), pid_gains.Y(), pid_gains.Z(), 20.0, -20.0, 20.0, -20.0);
    }

    // Initialize the ROS node handle
    nh_ = new ros::NodeHandle("/aqua_gazebo/flippers_plugin");
    get_leg_command_service = nh_->advertiseService("/aqua_gazebo/set_leg_command", &AquaFlippersPlugin::SetPeriodicLegCommand_cb,this);
    set_leg_command_service = nh_->advertiseService("/aqua_gazebo/get_leg_command", &AquaFlippersPlugin::GetPeriodicLegCommand_cb,this);
    get_target_angles_service = nh_->advertiseService("/aqua_gazebo/set_target_angles", &AquaFlippersPlugin::SetTargetLegAngles_cb,this);
    set_target_angles_service = nh_->advertiseService("/aqua_gazebo/get_target_angles", &AquaFlippersPlugin::GetTargetLegAngles_cb,this);

    // setup publisher for params
    params_pub = nh_->advertise<aqua_gazebo::ThrustParams>("/aqua_gazebo/thrust_params", 1);
    
    // setup dynamic reconfigure
    std::cout<<":::"<<server_<<std::endl;
    if (!server_){
        server_ = new dynamic_reconfigure::Server<aqua_gazebo::HydrodynamicsConfig>(*nh_);
    }
    dynamic_reconfigure::Server<aqua_gazebo::HydrodynamicsConfig>::CallbackType cb;
    cb = boost::bind(&AquaFlippersPlugin::DynamicReconfigureCallback, this, _1, _2);
    server_->setCallback(cb);

    // this event is triggered called on every simulation iteration
    updateConnection = gazebo::event::Events::ConnectWorldUpdateBegin(boost::bind(&AquaFlippersPlugin::OnUpdate, this, _1));

    last_update_time =  model->GetWorld()->GetSimTime();

    base_link = model->GetLink("aqua_base");
    motor_joints.resize(NUM_LEGS);
    leg_links.resize(NUM_LEGS);
    for (size_t i=0;i<NUM_LEGS;++i) {
        motor_joints[i] = model->GetJoint(JOINT_NAMES[i]);
        leg_links[i] = model->GetLink(LEG_NAMES[i]);
    }

    // get leg dimensions
    leg_dims = leg_links[0]->GetBoundingBox().Ign().Size();
    
    aqua_gazebo::HydrodynamicsConfig config;
    config.density = fluid_density;
    config.thrustK1 = thrustK1;
    config.thrustK2 = thrustK2;
    DynamicReconfigureCallback(config,0);

}

void AquaFlippersPlugin::DynamicReconfigureCallback(aqua_gazebo::HydrodynamicsConfig &config, uint32_t level){
    ROS_INFO("density: [ %f ] K1: [ %f ] K2: [ %f ]", config.density, config.thrustK1, config.thrustK2);
    fluid_density = config.density;
    thrustK1 = config.thrustK1;
    thrustK2 = config.thrustK2;
    aqua_gazebo::ThrustParams params;
    params.header.stamp = ros::Time::now();
    params.K1 = thrustK1;
    params.K2 = thrustK2;
    
    params_pub.publish(params);
}

void AquaFlippersPlugin::OnUpdate(const gazebo::common::UpdateInfo & info){
    auto current_time = model->GetWorld()->GetSimTime();
    double dt = current_time.Double() - last_update_time.Double();
    last_update_time = current_time;

   // TODO get the motor commands here!
   for (size_t i=0;i<NUM_LEGS;++i) {
        double joint_angle = std::fmod(motor_joints[i]->GetAngle(1).Radian(),TWO_M_PI);
        target_angles[i] = std::fmod(target_angles[i],TWO_M_PI);

        //---------------------------------- THRUST MODEL --------------------------------------//
        // here we have the thrust model of [Giguère et al., 2006], [Plamondon & Nahon, 2009], or [Georgiades, 2005]
        auto leg_velocity = leg_links[i]->GetRelativeLinearVel();

        // just for fun, if the leg is above the surface of water (probably negligible at the given air density)
        double rho = 1.225;
        if(leg_links[i]->GetWorldCoGPose().pos.z <= surface_level){ 
           // below surface of water
            rho = fluid_density;
        } 
        
        if ( thrust_model == 1){
            // only apply thrust if it is going to be greater than zero
            if (amplitude_cmd[i]*frequency_cmd[i]>0.0){
                double thrust = thrustK1*((leg_dims.Y() + 2*1.05*leg_dims.Y())*leg_dims.X()*leg_dims.X()/3)*rho*amplitude_cmd[i]*frequency_cmd[i] + thrustK2;
                ignition::math::Vector3<double> leg_thrust(thrust,0,0);
                // apply force in the direction of the offset at the hip
                leg_links[i]->AddRelativeForce(leg_thrust);
            } else {
                thrust[i] = 0.0;
            }
        } 
        
        // apply torque moment to the body frame according to philippe's model
        //double M = K1*joint_angle + K2*leg_links[i]->GetRelative
        //auto leg_ang_vel = leg_links[i]->GetRelativeAngularVel();
        // TODO implement this


        //---------------------------------- MOTOR CONTROLLER --------------------------------------//
        target_angles[i] = amplitude_cmd[i]*std::sin(TWO_M_PI*frequency_cmd[i]*ros::Time::now().toSec() + phase_offsets_cmd[i]) + leg_offsets_cmd[i];
        double error = 0;
        
        pid[i].SetCmd(target_angles[i]);
        error = joint_angle - target_angles[i];

        // limit the error to be between -180 and 180
        error = std::fmod((error + M_PI),TWO_M_PI) - M_PI;
        if (error < -M_PI)
            error += TWO_M_PI;

        pid[i].Update(error,dt);

        motor_joints[i]->SetForce(0,pid[i].GetCmd());
    }
}

bool AquaFlippersPlugin::SetPeriodicLegCommand_cb(aquacore::SetPeriodicLegCommand::Request  &req, aquacore::SetPeriodicLegCommand::Response &res){
  std::copy(req.frequencies.begin(), req.frequencies.end(), frequency_cmd.begin());
  std::copy(req.amplitudes.begin(), req.amplitudes.end(), amplitude_cmd.begin());
  std::copy(req.leg_offsets.begin(), req.leg_offsets.end(), leg_offsets_cmd.begin());
  std::copy(req.phase_offsets.begin(), req.phase_offsets.end(), phase_offsets_cmd.begin());
  return true;
}

bool AquaFlippersPlugin::GetPeriodicLegCommand_cb(aquacore::GetPeriodicLegCommand::Request  &req, aquacore::GetPeriodicLegCommand::Response &res){
  std::copy(frequency_cmd.begin(), frequency_cmd.end(), res.frequencies.begin());
  std::copy(amplitude_cmd.begin(), amplitude_cmd.end(), res.amplitudes.begin());
  std::copy(leg_offsets_cmd.begin(), leg_offsets_cmd.end(), res.leg_offsets.begin());
  std::copy(phase_offsets_cmd.begin(), phase_offsets_cmd.end(), res.phase_offsets.begin());
  return true;
}

bool AquaFlippersPlugin::SetTargetLegAngles_cb(aquacore::SetTargetLegAngles::Request  &req, aquacore::SetTargetLegAngles::Response &res){
  std::copy(req.target_angles.begin(), req.target_angles.end(), target_angles.begin());
  return true;
}

bool AquaFlippersPlugin::GetTargetLegAngles_cb(aquacore::GetTargetLegAngles::Request  &req, aquacore::GetTargetLegAngles::Response &res){
  //
  std::copy(target_angles.begin(), target_angles.end(), res.target_angles.begin());
  return true;
}

GZ_REGISTER_MODEL_PLUGIN(AquaFlippersPlugin);
