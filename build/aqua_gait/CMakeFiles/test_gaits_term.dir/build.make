# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/shabirmean/Desktop/COMP765/Assignment1/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/shabirmean/Desktop/COMP765/Assignment1/build

# Include any dependencies generated for this target.
include aqua_gait/CMakeFiles/test_gaits_term.dir/depend.make

# Include the progress variables for this target.
include aqua_gait/CMakeFiles/test_gaits_term.dir/progress.make

# Include the compile flags for this target's objects.
include aqua_gait/CMakeFiles/test_gaits_term.dir/flags.make

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o: aqua_gait/CMakeFiles/test_gaits_term.dir/flags.make
aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o: /home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/src/test_gaits_term.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/shabirmean/Desktop/COMP765/Assignment1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o"
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o -c /home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/src/test_gaits_term.cpp

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.i"
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/src/test_gaits_term.cpp > CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.i

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.s"
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait/src/test_gaits_term.cpp -o CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.s

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.requires:

.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.requires

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.provides: aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.requires
	$(MAKE) -f aqua_gait/CMakeFiles/test_gaits_term.dir/build.make aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.provides.build
.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.provides

aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.provides.build: aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o


# Object files for target test_gaits_term
test_gaits_term_OBJECTS = \
"CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o"

# External object files for target test_gaits_term
test_gaits_term_EXTERNAL_OBJECTS =

/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: aqua_gait/CMakeFiles/test_gaits_term.dir/build.make
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/libactionlib.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/libroscpp.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_signals.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_filesystem.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/librosconsole.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/librosconsole_log4cxx.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/librosconsole_backend_interface.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/liblog4cxx.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_regex.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/libxmlrpcpp.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/libroscpp_serialization.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/librostime.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /opt/ros/kinetic/lib/libcpp_common.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_system.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_thread.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_chrono.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_date_time.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libboost_atomic.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libpthread.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /usr/lib/x86_64-linux-gnu/libconsole_bridge.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: /home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/libaqua_gait.so
/home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term: aqua_gait/CMakeFiles/test_gaits_term.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/shabirmean/Desktop/COMP765/Assignment1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable /home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term"
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_gaits_term.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
aqua_gait/CMakeFiles/test_gaits_term.dir/build: /home/shabirmean/Desktop/COMP765/Assignment1/devel/lib/aqua_gait/test_gaits_term

.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/build

aqua_gait/CMakeFiles/test_gaits_term.dir/requires: aqua_gait/CMakeFiles/test_gaits_term.dir/src/test_gaits_term.cpp.o.requires

.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/requires

aqua_gait/CMakeFiles/test_gaits_term.dir/clean:
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait && $(CMAKE_COMMAND) -P CMakeFiles/test_gaits_term.dir/cmake_clean.cmake
.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/clean

aqua_gait/CMakeFiles/test_gaits_term.dir/depend:
	cd /home/shabirmean/Desktop/COMP765/Assignment1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/shabirmean/Desktop/COMP765/Assignment1/src /home/shabirmean/Desktop/COMP765/Assignment1/src/aqua_gait /home/shabirmean/Desktop/COMP765/Assignment1/build /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait /home/shabirmean/Desktop/COMP765/Assignment1/build/aqua_gait/CMakeFiles/test_gaits_term.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : aqua_gait/CMakeFiles/test_gaits_term.dir/depend

