# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aquacore: 38 messages, 31 services")

set(MSG_I_FLAGS "-Iaquacore:/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg;-Iaquacore:/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aquacore_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/ChangeDepthGoal"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header:sensor_msgs/Imu"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:std_msgs/Header:sensor_msgs/Imu"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" "actionlib_msgs/GoalStatus:aquacore/DoSurfaceTaskFeedback:aquacore/DoSurfaceTaskActionGoal:aquacore/DoSurfaceTaskResult:aquacore/DoSurfaceTaskActionResult:aquacore/DoSurfaceTaskGoal:actionlib_msgs/GoalID:aquacore/DoSurfaceTaskActionFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" "geometry_msgs/Pose:aquacore/GotoGoal:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:actionlib_msgs/GoalID"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" "geometry_msgs/Pose:aquacore/GotoGoal:std_msgs/Header:aquacore/GotoActionResult:geometry_msgs/Quaternion:aquacore/GotoResult:geometry_msgs/Point:aquacore/GotoActionFeedback:aquacore/GotoActionGoal:actionlib_msgs/GoalID:aquacore/GotoFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" "sensor_msgs/NavSatStatus:sensor_msgs/NavSatFix:std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/DoSurfaceTaskFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" "aquacore/SwimForwardResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" "aquacore/SwimForwardFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/ChangeDepthFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/ChangeDepthResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" "aquacore/SwimForwardGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" "actionlib_msgs/GoalID:aquacore/GotoResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" "actionlib_msgs/GoalStatus:aquacore/ChangeDepthGoal:aquacore/ChangeDepthActionGoal:aquacore/ChangeDepthFeedback:aquacore/ChangeDepthActionResult:actionlib_msgs/GoalID:aquacore/ChangeDepthActionFeedback:aquacore/ChangeDepthResult:std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/DoSurfaceTaskResult:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Point:geometry_msgs/Pose:aquacore/GotoFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" "aquacore/SwimForwardActionResult:std_msgs/Header:aquacore/SwimForwardResult:aquacore/SwimForwardGoal:aquacore/SwimForwardFeedback:aquacore/SwimForwardActionGoal:actionlib_msgs/GoalID:aquacore/SwimForwardActionFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" "std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" "aquacore/StateMsg:std_msgs/Header"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:aquacore/DoSurfaceTaskGoal"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" ""
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_custom_target(_aquacore_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquacore" "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_msg_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)

### Generating Services
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)
_generate_srv_cpp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
)

### Generating Module File
_generate_module_cpp(aquacore
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aquacore_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aquacore_generate_messages aquacore_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_cpp _aquacore_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquacore_gencpp)
add_dependencies(aquacore_gencpp aquacore_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquacore_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_msg_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)

### Generating Services
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)
_generate_srv_eus(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
)

### Generating Module File
_generate_module_eus(aquacore
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aquacore_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aquacore_generate_messages aquacore_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_eus _aquacore_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquacore_geneus)
add_dependencies(aquacore_geneus aquacore_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquacore_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_msg_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)

### Generating Services
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)
_generate_srv_lisp(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
)

### Generating Module File
_generate_module_lisp(aquacore
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aquacore_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aquacore_generate_messages aquacore_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_lisp _aquacore_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquacore_genlisp)
add_dependencies(aquacore_genlisp aquacore_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquacore_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_msg_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)

### Generating Services
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)
_generate_srv_nodejs(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
)

### Generating Module File
_generate_module_nodejs(aquacore
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aquacore_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aquacore_generate_messages aquacore_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_nodejs _aquacore_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquacore_gennodejs)
add_dependencies(aquacore_gennodejs aquacore_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquacore_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatStatus.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/NavSatFix.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_msg_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)

### Generating Services
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Imu.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)
_generate_srv_py(aquacore
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
)

### Generating Module File
_generate_module_py(aquacore
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aquacore_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aquacore_generate_messages aquacore_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg" NAME_WE)
add_dependencies(aquacore_generate_messages_py _aquacore_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquacore_genpy)
add_dependencies(aquacore_genpy aquacore_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquacore_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquacore
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(aquacore_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(aquacore_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(aquacore_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(aquacore_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(aquacore_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquacore
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(aquacore_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(aquacore_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(aquacore_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(aquacore_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(aquacore_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquacore
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(aquacore_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(aquacore_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(aquacore_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(aquacore_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(aquacore_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquacore
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(aquacore_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(aquacore_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(aquacore_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(aquacore_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(aquacore_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquacore
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(aquacore_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(aquacore_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(aquacore_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(aquacore_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(aquacore_generate_messages_py sensor_msgs_generate_messages_py)
endif()
