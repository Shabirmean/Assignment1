# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aquajoy: 2 messages, 1 services")

set(MSG_I_FLAGS "-Iaquajoy:/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg;-Iaquacore:/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg;-Iaquacore:/home/shabirmean/Desktop/COMP765/Assignment1/devel/share/aquacore/msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aquajoy_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_custom_target(_aquajoy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquajoy" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" "aquacore/Command"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_custom_target(_aquajoy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquajoy" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" "aquajoy/AquaTeleopJoyParams"
)

get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_custom_target(_aquajoy_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aquajoy" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy
)
_generate_msg_cpp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy
)

### Generating Services
_generate_srv_cpp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy
)

### Generating Module File
_generate_module_cpp(aquajoy
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aquajoy_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aquajoy_generate_messages aquajoy_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_cpp _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_dependencies(aquajoy_generate_messages_cpp _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_cpp _aquajoy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquajoy_gencpp)
add_dependencies(aquajoy_gencpp aquajoy_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquajoy_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy
)
_generate_msg_eus(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy
)

### Generating Services
_generate_srv_eus(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy
)

### Generating Module File
_generate_module_eus(aquajoy
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aquajoy_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aquajoy_generate_messages aquajoy_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_eus _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_dependencies(aquajoy_generate_messages_eus _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_eus _aquajoy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquajoy_geneus)
add_dependencies(aquajoy_geneus aquajoy_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquajoy_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy
)
_generate_msg_lisp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy
)

### Generating Services
_generate_srv_lisp(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy
)

### Generating Module File
_generate_module_lisp(aquajoy
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aquajoy_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aquajoy_generate_messages aquajoy_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_lisp _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_dependencies(aquajoy_generate_messages_lisp _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_lisp _aquajoy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquajoy_genlisp)
add_dependencies(aquajoy_genlisp aquajoy_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquajoy_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy
)
_generate_msg_nodejs(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy
)

### Generating Services
_generate_srv_nodejs(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy
)

### Generating Module File
_generate_module_nodejs(aquajoy
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aquajoy_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aquajoy_generate_messages aquajoy_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_nodejs _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_dependencies(aquajoy_generate_messages_nodejs _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_nodejs _aquajoy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquajoy_gennodejs)
add_dependencies(aquajoy_gennodejs aquajoy_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquajoy_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquacore/msg/Command.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy
)
_generate_msg_py(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy
)

### Generating Services
_generate_srv_py(aquajoy
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv"
  "${MSG_I_FLAGS}"
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy
)

### Generating Module File
_generate_module_py(aquajoy
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aquajoy_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aquajoy_generate_messages aquajoy_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyState.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_py _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/srv/UpdateAquaTeleopJoyParams.srv" NAME_WE)
add_dependencies(aquajoy_generate_messages_py _aquajoy_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aquajoy/msg/AquaTeleopJoyParams.msg" NAME_WE)
add_dependencies(aquajoy_generate_messages_py _aquajoy_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aquajoy_genpy)
add_dependencies(aquajoy_genpy aquajoy_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aquajoy_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aquajoy
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET aquacore_generate_messages_cpp)
  add_dependencies(aquajoy_generate_messages_cpp aquacore_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(aquajoy_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(aquajoy_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aquajoy
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET aquacore_generate_messages_eus)
  add_dependencies(aquajoy_generate_messages_eus aquacore_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(aquajoy_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(aquajoy_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aquajoy
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET aquacore_generate_messages_lisp)
  add_dependencies(aquajoy_generate_messages_lisp aquacore_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(aquajoy_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(aquajoy_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aquajoy
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET aquacore_generate_messages_nodejs)
  add_dependencies(aquajoy_generate_messages_nodejs aquacore_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(aquajoy_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(aquajoy_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aquajoy
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET aquacore_generate_messages_py)
  add_dependencies(aquajoy_generate_messages_py aquacore_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(aquajoy_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(aquajoy_generate_messages_py geometry_msgs_generate_messages_py)
endif()
