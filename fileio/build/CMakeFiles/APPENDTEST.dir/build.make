# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/firefly/Codes/C/TLPI/fileio

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/firefly/Codes/C/TLPI/fileio/build

# Include any dependencies generated for this target.
include CMakeFiles/APPENDTEST.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/APPENDTEST.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/APPENDTEST.dir/flags.make

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: CMakeFiles/APPENDTEST.dir/flags.make
CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: /home/firefly/Codes/C/TLPI/lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/fileio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o   -c /home/firefly/Codes/C/TLPI/lib/error_functions.c

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/error_functions.c > CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/error_functions.c -o CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: CMakeFiles/APPENDTEST.dir/flags.make
CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: /home/firefly/Codes/C/TLPI/lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/fileio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o   -c /home/firefly/Codes/C/TLPI/lib/get_num.c

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/get_num.c > CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i

CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/get_num.c -o CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s

CMakeFiles/APPENDTEST.dir/src/appendTest.c.o: CMakeFiles/APPENDTEST.dir/flags.make
CMakeFiles/APPENDTEST.dir/src/appendTest.c.o: ../src/appendTest.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/fileio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/APPENDTEST.dir/src/appendTest.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/APPENDTEST.dir/src/appendTest.c.o   -c /home/firefly/Codes/C/TLPI/fileio/src/appendTest.c

CMakeFiles/APPENDTEST.dir/src/appendTest.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/APPENDTEST.dir/src/appendTest.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/fileio/src/appendTest.c > CMakeFiles/APPENDTEST.dir/src/appendTest.c.i

CMakeFiles/APPENDTEST.dir/src/appendTest.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/APPENDTEST.dir/src/appendTest.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/fileio/src/appendTest.c -o CMakeFiles/APPENDTEST.dir/src/appendTest.c.s

# Object files for target APPENDTEST
APPENDTEST_OBJECTS = \
"CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o" \
"CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o" \
"CMakeFiles/APPENDTEST.dir/src/appendTest.c.o"

# External object files for target APPENDTEST
APPENDTEST_EXTERNAL_OBJECTS =

../bin/APPENDTEST: CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o
../bin/APPENDTEST: CMakeFiles/APPENDTEST.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o
../bin/APPENDTEST: CMakeFiles/APPENDTEST.dir/src/appendTest.c.o
../bin/APPENDTEST: CMakeFiles/APPENDTEST.dir/build.make
../bin/APPENDTEST: CMakeFiles/APPENDTEST.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/Codes/C/TLPI/fileio/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable ../bin/APPENDTEST"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/APPENDTEST.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/APPENDTEST.dir/build: ../bin/APPENDTEST

.PHONY : CMakeFiles/APPENDTEST.dir/build

CMakeFiles/APPENDTEST.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/APPENDTEST.dir/cmake_clean.cmake
.PHONY : CMakeFiles/APPENDTEST.dir/clean

CMakeFiles/APPENDTEST.dir/depend:
	cd /home/firefly/Codes/C/TLPI/fileio/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/Codes/C/TLPI/fileio /home/firefly/Codes/C/TLPI/fileio /home/firefly/Codes/C/TLPI/fileio/build /home/firefly/Codes/C/TLPI/fileio/build /home/firefly/Codes/C/TLPI/fileio/build/CMakeFiles/APPENDTEST.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/APPENDTEST.dir/depend

