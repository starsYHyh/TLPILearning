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
CMAKE_SOURCE_DIR = /home/firefly/Codes/C/TLPI/proc

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/firefly/Codes/C/TLPI/proc/build

# Include any dependencies generated for this target.
include CMakeFiles/LONGJMP.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/LONGJMP.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/LONGJMP.dir/flags.make

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: CMakeFiles/LONGJMP.dir/flags.make
CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: /home/firefly/Codes/C/TLPI/lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o   -c /home/firefly/Codes/C/TLPI/lib/error_functions.c

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/error_functions.c > CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/error_functions.c -o CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: CMakeFiles/LONGJMP.dir/flags.make
CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: /home/firefly/Codes/C/TLPI/lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o   -c /home/firefly/Codes/C/TLPI/lib/get_num.c

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/get_num.c > CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i

CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/get_num.c -o CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s

CMakeFiles/LONGJMP.dir/src/longjmp.c.o: CMakeFiles/LONGJMP.dir/flags.make
CMakeFiles/LONGJMP.dir/src/longjmp.c.o: ../src/longjmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/LONGJMP.dir/src/longjmp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/LONGJMP.dir/src/longjmp.c.o   -c /home/firefly/Codes/C/TLPI/proc/src/longjmp.c

CMakeFiles/LONGJMP.dir/src/longjmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/LONGJMP.dir/src/longjmp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/proc/src/longjmp.c > CMakeFiles/LONGJMP.dir/src/longjmp.c.i

CMakeFiles/LONGJMP.dir/src/longjmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/LONGJMP.dir/src/longjmp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/proc/src/longjmp.c -o CMakeFiles/LONGJMP.dir/src/longjmp.c.s

# Object files for target LONGJMP
LONGJMP_OBJECTS = \
"CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o" \
"CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o" \
"CMakeFiles/LONGJMP.dir/src/longjmp.c.o"

# External object files for target LONGJMP
LONGJMP_EXTERNAL_OBJECTS =

../bin/LONGJMP: CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o
../bin/LONGJMP: CMakeFiles/LONGJMP.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o
../bin/LONGJMP: CMakeFiles/LONGJMP.dir/src/longjmp.c.o
../bin/LONGJMP: CMakeFiles/LONGJMP.dir/build.make
../bin/LONGJMP: CMakeFiles/LONGJMP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable ../bin/LONGJMP"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/LONGJMP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/LONGJMP.dir/build: ../bin/LONGJMP

.PHONY : CMakeFiles/LONGJMP.dir/build

CMakeFiles/LONGJMP.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/LONGJMP.dir/cmake_clean.cmake
.PHONY : CMakeFiles/LONGJMP.dir/clean

CMakeFiles/LONGJMP.dir/depend:
	cd /home/firefly/Codes/C/TLPI/proc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/Codes/C/TLPI/proc /home/firefly/Codes/C/TLPI/proc /home/firefly/Codes/C/TLPI/proc/build /home/firefly/Codes/C/TLPI/proc/build /home/firefly/Codes/C/TLPI/proc/build/CMakeFiles/LONGJMP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/LONGJMP.dir/depend
