# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/firefly/Codes/C/TLPI/signals

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/firefly/Codes/C/TLPI/signals/build

# Include any dependencies generated for this target.
include CMakeFiles/OUCH.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/OUCH.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/OUCH.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/OUCH.dir/flags.make

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: CMakeFiles/OUCH.dir/flags.make
CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: /home/firefly/Codes/C/TLPI/lib/error_functions.c
CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o: CMakeFiles/OUCH.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o -MF CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o.d -o CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o -c /home/firefly/Codes/C/TLPI/lib/error_functions.c

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/error_functions.c > CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.i

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/error_functions.c -o CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.s

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: CMakeFiles/OUCH.dir/flags.make
CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: /home/firefly/Codes/C/TLPI/lib/get_num.c
CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o: CMakeFiles/OUCH.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o -MF CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o.d -o CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o -c /home/firefly/Codes/C/TLPI/lib/get_num.c

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/lib/get_num.c > CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.i

CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/lib/get_num.c -o CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.s

CMakeFiles/OUCH.dir/src/ouch.c.o: CMakeFiles/OUCH.dir/flags.make
CMakeFiles/OUCH.dir/src/ouch.c.o: ../src/ouch.c
CMakeFiles/OUCH.dir/src/ouch.c.o: CMakeFiles/OUCH.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/firefly/Codes/C/TLPI/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/OUCH.dir/src/ouch.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/OUCH.dir/src/ouch.c.o -MF CMakeFiles/OUCH.dir/src/ouch.c.o.d -o CMakeFiles/OUCH.dir/src/ouch.c.o -c /home/firefly/Codes/C/TLPI/signals/src/ouch.c

CMakeFiles/OUCH.dir/src/ouch.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/OUCH.dir/src/ouch.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/firefly/Codes/C/TLPI/signals/src/ouch.c > CMakeFiles/OUCH.dir/src/ouch.c.i

CMakeFiles/OUCH.dir/src/ouch.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/OUCH.dir/src/ouch.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/firefly/Codes/C/TLPI/signals/src/ouch.c -o CMakeFiles/OUCH.dir/src/ouch.c.s

# Object files for target OUCH
OUCH_OBJECTS = \
"CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o" \
"CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o" \
"CMakeFiles/OUCH.dir/src/ouch.c.o"

# External object files for target OUCH
OUCH_EXTERNAL_OBJECTS =

../bin/OUCH: CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/error_functions.c.o
../bin/OUCH: CMakeFiles/OUCH.dir/home/firefly/Codes/C/TLPI/lib/get_num.c.o
../bin/OUCH: CMakeFiles/OUCH.dir/src/ouch.c.o
../bin/OUCH: CMakeFiles/OUCH.dir/build.make
../bin/OUCH: CMakeFiles/OUCH.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/firefly/Codes/C/TLPI/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable ../bin/OUCH"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/OUCH.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/OUCH.dir/build: ../bin/OUCH
.PHONY : CMakeFiles/OUCH.dir/build

CMakeFiles/OUCH.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/OUCH.dir/cmake_clean.cmake
.PHONY : CMakeFiles/OUCH.dir/clean

CMakeFiles/OUCH.dir/depend:
	cd /home/firefly/Codes/C/TLPI/signals/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/firefly/Codes/C/TLPI/signals /home/firefly/Codes/C/TLPI/signals /home/firefly/Codes/C/TLPI/signals/build /home/firefly/Codes/C/TLPI/signals/build /home/firefly/Codes/C/TLPI/signals/build/CMakeFiles/OUCH.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/OUCH.dir/depend
