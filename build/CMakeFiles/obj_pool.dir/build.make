# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.23

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.23.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.23.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/benjiyuan/Documents/project/cpp_wheel

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/benjiyuan/Documents/project/cpp_wheel/build

# Include any dependencies generated for this target.
include CMakeFiles/obj_pool.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/obj_pool.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/obj_pool.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/obj_pool.dir/flags.make

CMakeFiles/obj_pool.dir/obj_pool.cpp.o: CMakeFiles/obj_pool.dir/flags.make
CMakeFiles/obj_pool.dir/obj_pool.cpp.o: ../obj_pool.cpp
CMakeFiles/obj_pool.dir/obj_pool.cpp.o: CMakeFiles/obj_pool.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/obj_pool.dir/obj_pool.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/obj_pool.dir/obj_pool.cpp.o -MF CMakeFiles/obj_pool.dir/obj_pool.cpp.o.d -o CMakeFiles/obj_pool.dir/obj_pool.cpp.o -c /Users/benjiyuan/Documents/project/cpp_wheel/obj_pool.cpp

CMakeFiles/obj_pool.dir/obj_pool.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/obj_pool.dir/obj_pool.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benjiyuan/Documents/project/cpp_wheel/obj_pool.cpp > CMakeFiles/obj_pool.dir/obj_pool.cpp.i

CMakeFiles/obj_pool.dir/obj_pool.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/obj_pool.dir/obj_pool.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benjiyuan/Documents/project/cpp_wheel/obj_pool.cpp -o CMakeFiles/obj_pool.dir/obj_pool.cpp.s

# Object files for target obj_pool
obj_pool_OBJECTS = \
"CMakeFiles/obj_pool.dir/obj_pool.cpp.o"

# External object files for target obj_pool
obj_pool_EXTERNAL_OBJECTS =

obj_pool: CMakeFiles/obj_pool.dir/obj_pool.cpp.o
obj_pool: CMakeFiles/obj_pool.dir/build.make
obj_pool: CMakeFiles/obj_pool.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable obj_pool"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/obj_pool.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/obj_pool.dir/build: obj_pool
.PHONY : CMakeFiles/obj_pool.dir/build

CMakeFiles/obj_pool.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/obj_pool.dir/cmake_clean.cmake
.PHONY : CMakeFiles/obj_pool.dir/clean

CMakeFiles/obj_pool.dir/depend:
	cd /Users/benjiyuan/Documents/project/cpp_wheel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles/obj_pool.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/obj_pool.dir/depend

