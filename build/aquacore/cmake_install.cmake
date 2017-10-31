# Install script for directory: /home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/shabirmean/Desktop/COMP765/Assignment1/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/AutopilotModes.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/cuROSTityScore.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/GPSFixList.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Health.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/KeepAlive.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/StateMsg.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/SurfaceTaskTypes.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Velocity.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/PeriodicLegCommand.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/srv" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/DumpAllVars.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EmptyBool.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableAutopilot.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/EnableDepthControl.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotParams.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetAutopilotState.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetLegParams.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedBool.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedFloat.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetNamedInt.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetState.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/IsCalibrated.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/Menu.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotMode.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetAutopilotParams.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetBool.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetDirection.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetGait.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetLegParams.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetNamedFloat.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPauseMode.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetString.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetAngles.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetDepth.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetUpRegulatedSwimMode.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetPeriodicLegCommand.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetPeriodicLegCommand.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/SetTargetLegAngles.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/GetTargetLegAngles.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/StepSimulation.srv"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/srv/RunSimulationUntilTime.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/action" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/action/ChangeDepth.action"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/action/DoSurfaceTask.action"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/action/Goto.action"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/action/SwimForward.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthAction.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthActionFeedback.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/ChangeDepthFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskAction.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskActionFeedback.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/DoSurfaceTaskFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoAction.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoActionFeedback.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/GotoFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardAction.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardActionFeedback.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardGoal.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardResult.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg/SwimForwardFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/cmake" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquacore/catkin_generated/installspace/aquacore-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/include/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/roseus/ros/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/common-lisp/ros/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/gennodejs/ros/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquacore")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquacore/catkin_generated/installspace/aquacore.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/cmake" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquacore/catkin_generated/installspace/aquacore-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore/cmake" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquacore/catkin_generated/installspace/aquacoreConfig.cmake"
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquacore/catkin_generated/installspace/aquacoreConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquacore" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/package.xml")
endif()

