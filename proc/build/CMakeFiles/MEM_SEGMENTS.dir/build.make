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
include CMakeFiles/MEM_SEGMENTS.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/MEM_SEGMENTS.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/MEM_SEGMENTS.dir/flags.make

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: CMakeFiles/MEM_SEGMENTS.dir/flags.make
CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: /home/firefly/Codes/C/TLPI/lib/error_functions.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o   -c /home/firefly/Codes/C/TLPI/lib/error_functions.c

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/error_functions.c > CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/error_functions.c -o CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: CMakeFiles/MEM_SEGMENTS.dir/flags.make
CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: /home/firefly/Codes/C/TLPI/lib/get_num.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o   -c /home/firefly/Codes/C/TLPI/lib/get_num.c

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/get_num.c > CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i

CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/get_num.c -o CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s

CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o: CMakeFiles/MEM_SEGMENTS.dir/flags.make
CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o: ../src/mem_segments.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o   -c /home/firefly/Codes/C/TLPI/proc/src/mem_segments.c

CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/proc/src/mem_segments.c > CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.i

CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/proc/src/mem_segments.c -o CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.s

# Object files for target MEM_SEGMENTS
MEM_SEGMENTS_OBJECTS = \
"CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o" \
"CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o" \
"CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o"

# External object files for target MEM_SEGMENTS
MEM_SEGMENTS_EXTERNAL_OBJECTS =

../bin/MEM_SEGMENTS: CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o
../bin/MEM_SEGMENTS: CMakeFiles/MEM_SEGMENTS.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o
../bin/MEM_SEGMENTS: CMakeFiles/MEM_SEGMENTS.dir/src/mem_segments.c.o
../bin/MEM_SEGMENTS: CMakeFiles/MEM_SEGMENTS.dir/build.make
../bin/MEM_SEGMENTS: CMakeFiles/MEM_SEGMENTS.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/Codes/C/TLPI/proc/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable ../bin/MEM_SEGMENTS"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MEM_SEGMENTS.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/MEM_SEGMENTS.dir/build: ../bin/MEM_SEGMENTS

.PHONY : CMakeFiles/MEM_SEGMENTS.dir/build

CMakeFiles/MEM_SEGMENTS.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/MEM_SEGMENTS.dir/cmake_clean.cmake
.PHONY : CMakeFiles/MEM_SEGMENTS.dir/clean

CMakeFiles/MEM_SEGMENTS.dir/depend:
	cd /home/firefly/Codes/C/TLPI/proc/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/Codes/C/TLPI/proc /home/firefly/Codes/C/TLPI/proc /home/firefly/Codes/C/TLPI/proc/build /home/firefly/Codes/C/TLPI/proc/build /home/firefly/Codes/C/TLPI/proc/build/CMakeFiles/MEM_SEGMENTS.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/MEM_SEGMENTS.dir/depend
