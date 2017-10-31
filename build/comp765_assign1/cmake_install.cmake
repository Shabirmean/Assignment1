# Install script for directory: /home/shabirmean/Desktop/COMP765/Assignment1/src/comp765_assign1

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/comp765_assign1/cmake" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1Config.cmake"
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/comp765_assign1" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/src/comp765_assign1/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/comp765_assign1/cmake" TYPE FILE FILES
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1Config.cmake"
    "/home/shabirmean/Desktop/COMP765/Assignment1/build/comp765_assign1/catkin_generated/installspace/comp765_assign1Config-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/comp765_assign1" TYPE FILE FILES "/home/shabirmean/Desktop/COMP765/Assignment1/src/comp765_assign1/package.xml")
endif()

