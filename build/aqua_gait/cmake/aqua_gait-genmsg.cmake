# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "aqua_gait: 0 messages, 1 services")

set(MSG_I_FLAGS "")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(aqua_gait_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_custom_target(_aqua_gait_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "aqua_gait" "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(aqua_gait
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aqua_gait
)

### Generating Module File
_generate_module_cpp(aqua_gait
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aqua_gait
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(aqua_gait_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(aqua_gait_generate_messages aqua_gait_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_dependencies(aqua_gait_generate_messages_cpp _aqua_gait_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aqua_gait_gencpp)
add_dependencies(aqua_gait_gencpp aqua_gait_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aqua_gait_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(aqua_gait
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aqua_gait
)

### Generating Module File
_generate_module_eus(aqua_gait
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aqua_gait
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(aqua_gait_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(aqua_gait_generate_messages aqua_gait_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_dependencies(aqua_gait_generate_messages_eus _aqua_gait_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aqua_gait_geneus)
add_dependencies(aqua_gait_geneus aqua_gait_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aqua_gait_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(aqua_gait
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aqua_gait
)

### Generating Module File
_generate_module_lisp(aqua_gait
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aqua_gait
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(aqua_gait_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(aqua_gait_generate_messages aqua_gait_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_dependencies(aqua_gait_generate_messages_lisp _aqua_gait_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aqua_gait_genlisp)
add_dependencies(aqua_gait_genlisp aqua_gait_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aqua_gait_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(aqua_gait
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aqua_gait
)

### Generating Module File
_generate_module_nodejs(aqua_gait
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aqua_gait
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(aqua_gait_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(aqua_gait_generate_messages aqua_gait_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_dependencies(aqua_gait_generate_messages_nodejs _aqua_gait_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aqua_gait_gennodejs)
add_dependencies(aqua_gait_gennodejs aqua_gait_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aqua_gait_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(aqua_gait
  "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aqua_gait
)

### Generating Module File
_generate_module_py(aqua_gait
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aqua_gait
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(aqua_gait_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(aqua_gait_generate_messages aqua_gait_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/srv/UpdateTargetRPYD.srv" NAME_WE)
add_dependencies(aqua_gait_generate_messages_py _aqua_gait_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(aqua_gait_genpy)
add_dependencies(aqua_gait_genpy aqua_gait_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS aqua_gait_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aqua_gait)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/aqua_gait
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aqua_gait)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/aqua_gait
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aqua_gait)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/aqua_gait
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aqua_gait)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/aqua_gait
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aqua_gait)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aqua_gait\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/aqua_gait
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
