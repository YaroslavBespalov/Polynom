# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build

# Include any dependencies generated for this target.
include CMakeFiles/Polynom_unittests.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Polynom_unittests.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Polynom_unittests.dir/flags.make

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o: CMakeFiles/Polynom_unittests.dir/flags.make
CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o: ../tests/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o -c /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/main.cpp

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Polynom_unittests.dir/tests/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/main.cpp > CMakeFiles/Polynom_unittests.dir/tests/main.cpp.i

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Polynom_unittests.dir/tests/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/main.cpp -o CMakeFiles/Polynom_unittests.dir/tests/main.cpp.s

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.requires:

.PHONY : CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.requires

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.provides: CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/Polynom_unittests.dir/build.make CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.provides.build
.PHONY : CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.provides

CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.provides.build: CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o


CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o: CMakeFiles/Polynom_unittests.dir/flags.make
CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o: ../tests/Polynom_unittests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o -c /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/Polynom_unittests.cpp

CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/Polynom_unittests.cpp > CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.i

CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/tests/Polynom_unittests.cpp -o CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.s

CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.requires:

.PHONY : CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.requires

CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.provides: CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.requires
	$(MAKE) -f CMakeFiles/Polynom_unittests.dir/build.make CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.provides.build
.PHONY : CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.provides

CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.provides.build: CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o


# Object files for target Polynom_unittests
Polynom_unittests_OBJECTS = \
"CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o" \
"CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o"

# External object files for target Polynom_unittests
Polynom_unittests_EXTERNAL_OBJECTS =

Polynom_unittests: CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o
Polynom_unittests: CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o
Polynom_unittests: CMakeFiles/Polynom_unittests.dir/build.make
Polynom_unittests: libPolynom_lib.a
Polynom_unittests: CMakeFiles/Polynom_unittests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable Polynom_unittests"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Polynom_unittests.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Polynom_unittests.dir/build: Polynom_unittests

.PHONY : CMakeFiles/Polynom_unittests.dir/build

CMakeFiles/Polynom_unittests.dir/requires: CMakeFiles/Polynom_unittests.dir/tests/main.cpp.o.requires
CMakeFiles/Polynom_unittests.dir/requires: CMakeFiles/Polynom_unittests.dir/tests/Polynom_unittests.cpp.o.requires

.PHONY : CMakeFiles/Polynom_unittests.dir/requires

CMakeFiles/Polynom_unittests.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Polynom_unittests.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Polynom_unittests.dir/clean

CMakeFiles/Polynom_unittests.dir/depend:
	cd /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2 /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2 /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build /Users/yaroslav/Documents/xCodePrograms/CS-center/с++/Polynom/BespalovHW2Task2/build/CMakeFiles/Polynom_unittests.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Polynom_unittests.dir/depend

