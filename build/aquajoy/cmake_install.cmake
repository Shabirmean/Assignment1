# Install script for directory: /home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy/msg" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
    "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy/srv" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy/cmake" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquajoy/catkin_generated/installspace/aquajoy-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/include/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/roseus/ros/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/common-lisp/ros/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/gennodejs/ros/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquajoy")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/aquajoy" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/include/aquajoy/AquaTeleopJoyConfig.h")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/aquajoy" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquajoy/__init__.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquajoy/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages/aquajoy" TYPE DIRECTORY FILES "/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/python2.7/dist-packages/aquajoy/cfg")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquajoy/catkin_generated/installspace/aquajoy.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy/cmake" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquajoy/catkin_generated/installspace/aquajoy-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy/cmake" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquajoy/catkin_generated/installspace/aquajoyConfig.cmake"
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/aquajoy/catkin_generated/installspace/aquajoyConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/aquajoy" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/package.xml")
endif()

