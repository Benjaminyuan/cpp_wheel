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
include CMakeFiles/my_string.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/my_string.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/my_string.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/my_string.dir/flags.make

CMakeFiles/my_string.dir/my_string.cpp.o: CMakeFiles/my_string.dir/flags.make
CMakeFiles/my_string.dir/my_string.cpp.o: ../my_string.cpp
CMakeFiles/my_string.dir/my_string.cpp.o: CMakeFiles/my_string.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/my_string.dir/my_string.cpp.o"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/my_string.dir/my_string.cpp.o -MF CMakeFiles/my_string.dir/my_string.cpp.o.d -o CMakeFiles/my_string.dir/my_string.cpp.o -c /Users/benjiyuan/Documents/project/cpp_wheel/my_string.cpp

CMakeFiles/my_string.dir/my_string.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_string.dir/my_string.cpp.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/benjiyuan/Documents/project/cpp_wheel/my_string.cpp > CMakeFiles/my_string.dir/my_string.cpp.i

CMakeFiles/my_string.dir/my_string.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_string.dir/my_string.cpp.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/benjiyuan/Documents/project/cpp_wheel/my_string.cpp -o CMakeFiles/my_string.dir/my_string.cpp.s

# Object files for target my_string
my_string_OBJECTS = \
"CMakeFiles/my_string.dir/my_string.cpp.o"

# External object files for target my_string
my_string_EXTERNAL_OBJECTS =

my_string: CMakeFiles/my_string.dir/my_string.cpp.o
my_string: CMakeFiles/my_string.dir/build.make
my_string: CMakeFiles/my_string.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable my_string"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_string.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/my_string.dir/build: my_string
.PHONY : CMakeFiles/my_string.dir/build

CMakeFiles/my_string.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/my_string.dir/cmake_clean.cmake
.PHONY : CMakeFiles/my_string.dir/clean

CMakeFiles/my_string.dir/depend:
	cd /Users/benjiyuan/Documents/project/cpp_wheel/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build /Users/benjiyuan/Documents/project/cpp_wheel/build/CMakeFiles/my_string.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/my_string.dir/depend

