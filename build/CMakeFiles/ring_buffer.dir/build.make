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
include CMakeFiles/ring_buffer.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/ring_buffer.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/ring_buffer.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ring_buffer.dir/flags.make

CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o: CMakeFiles/ring_buffer.dir/flags.make
CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o: ../ring_buffer.cpp
CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o: CMakeFiles/ring_buffer.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o -MF CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o.d -o CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o -c /Users/benjiyuan/Documents/project/cpp_wheel/ring_buffer.cpp

CMakeFiles/ring_buffer.dir/ring_buffer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ring_buffer.dir/ring_buffer.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benjiyuan/Documents/project/cpp_wheel/ring_buffer.cpp > CMakeFiles/ring_buffer.dir/ring_buffer.cpp.i

CMakeFiles/ring_buffer.dir/ring_buffer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ring_buffer.dir/ring_buffer.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benjiyuan/Documents/project/cpp_wheel/ring_buffer.cpp -o CMakeFiles/ring_buffer.dir/ring_buffer.cpp.s

# Object files for target ring_buffer
ring_buffer_OBJECTS = \
"CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o"

# External object files for target ring_buffer
ring_buffer_EXTERNAL_OBJECTS =

ring_buffer: CMakeFiles/ring_buffer.dir/ring_buffer.cpp.o
ring_buffer: CMakeFiles/ring_buffer.dir/build.make
ring_buffer: CMakeFiles/ring_buffer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ring_buffer"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ring_buffer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ring_buffer.dir/build: ring_buffer
.PHONY : CMakeFiles/ring_buffer.dir/build

CMakeFiles/ring_buffer.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ring_buffer.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ring_buffer.dir/clean

CMakeFiles/ring_buffer.dir/depend:
	cd /Users/benjiyuan/Documents/project/cpp_wheel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles/ring_buffer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/ring_buffer.dir/depend
