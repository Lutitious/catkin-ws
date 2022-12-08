# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "second_coursework_srv: 0 messages, 1 services")

set(MSG_I_FLAGS "-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(second_coursework_srv_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_custom_target(_second_coursework_srv_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "second_coursework_srv" "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(second_coursework_srv
  "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework_srv
)

### Generating Module File
_generate_module_cpp(second_coursework_srv
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework_srv
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(second_coursework_srv_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(second_coursework_srv_generate_messages second_coursework_srv_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_dependencies(second_coursework_srv_generate_messages_cpp _second_coursework_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_srv_gencpp)
add_dependencies(second_coursework_srv_gencpp second_coursework_srv_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_srv_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(second_coursework_srv
  "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework_srv
)

### Generating Module File
_generate_module_eus(second_coursework_srv
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework_srv
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(second_coursework_srv_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(second_coursework_srv_generate_messages second_coursework_srv_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_dependencies(second_coursework_srv_generate_messages_eus _second_coursework_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_srv_geneus)
add_dependencies(second_coursework_srv_geneus second_coursework_srv_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_srv_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(second_coursework_srv
  "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework_srv
)

### Generating Module File
_generate_module_lisp(second_coursework_srv
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework_srv
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(second_coursework_srv_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(second_coursework_srv_generate_messages second_coursework_srv_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_dependencies(second_coursework_srv_generate_messages_lisp _second_coursework_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_srv_genlisp)
add_dependencies(second_coursework_srv_genlisp second_coursework_srv_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_srv_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(second_coursework_srv
  "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework_srv
)

### Generating Module File
_generate_module_nodejs(second_coursework_srv
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework_srv
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(second_coursework_srv_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(second_coursework_srv_generate_messages second_coursework_srv_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_dependencies(second_coursework_srv_generate_messages_nodejs _second_coursework_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_srv_gennodejs)
add_dependencies(second_coursework_srv_gennodejs second_coursework_srv_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_srv_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(second_coursework_srv
  "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework_srv
)

### Generating Module File
_generate_module_py(second_coursework_srv
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework_srv
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(second_coursework_srv_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(second_coursework_srv_generate_messages second_coursework_srv_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/rahul/catkin_ws/src/second_coursework/srv/GetRoomCoord.srv" NAME_WE)
add_dependencies(second_coursework_srv_generate_messages_py _second_coursework_srv_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(second_coursework_srv_genpy)
add_dependencies(second_coursework_srv_genpy second_coursework_srv_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS second_coursework_srv_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/second_coursework_srv
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(second_coursework_srv_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/second_coursework_srv
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(second_coursework_srv_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/second_coursework_srv
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(second_coursework_srv_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework_srv)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/second_coursework_srv
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(second_coursework_srv_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework_srv)
  install(CODE "execute_process(COMMAND \"/usr/sbin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework_srv\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/second_coursework_srv
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(second_coursework_srv_generate_messages_py geometry_msgs_generate_messages_py)
endif()
