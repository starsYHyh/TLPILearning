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
CMAKE_SOURCE_DIR = /home/ubuntu/Documents/C/TLPILearning/signals

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ubuntu/Documents/C/TLPILearning/signals/build

# Include any dependencies generated for this target.
include CMakeFiles/T_SIGQUEUE.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/T_SIGQUEUE.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/T_SIGQUEUE.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/T_SIGQUEUE.dir/flags.make

CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o: CMakeFiles/T_SIGQUEUE.dir/flags.make
CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o: ../lib/signal_functions.c
CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o: CMakeFiles/T_SIGQUEUE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o -MF CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o.d -o CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o -c /home/ubuntu/Documents/C/TLPILearning/signals/lib/signal_functions.c

CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Documents/C/TLPILearning/signals/lib/signal_functions.c > CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.i

CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Documents/C/TLPILearning/signals/lib/signal_functions.c -o CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.s

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o: CMakeFiles/T_SIGQUEUE.dir/flags.make
CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o: /home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c
CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o: CMakeFiles/T_SIGQUEUE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o -MF CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o.d -o CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o -c /home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c > CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.i

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c -o CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.s

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o: CMakeFiles/T_SIGQUEUE.dir/flags.make
CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o: /home/ubuntu/Documents/C/TLPILearning/lib/get_num.c
CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o: CMakeFiles/T_SIGQUEUE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o -MF CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o.d -o CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o -c /home/ubuntu/Documents/C/TLPILearning/lib/get_num.c

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Documents/C/TLPILearning/lib/get_num.c > CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.i

CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Documents/C/TLPILearning/lib/get_num.c -o CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.s

CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o: CMakeFiles/T_SIGQUEUE.dir/flags.make
CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o: ../src/t_sigqueue.c
CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o: CMakeFiles/T_SIGQUEUE.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o -MF CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o.d -o CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o -c /home/ubuntu/Documents/C/TLPILearning/signals/src/t_sigqueue.c

CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/ubuntu/Documents/C/TLPILearning/signals/src/t_sigqueue.c > CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.i

CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/ubuntu/Documents/C/TLPILearning/signals/src/t_sigqueue.c -o CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.s

# Object files for target T_SIGQUEUE
T_SIGQUEUE_OBJECTS = \
"CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o" \
"CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o" \
"CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o" \
"CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o"

# External object files for target T_SIGQUEUE
T_SIGQUEUE_EXTERNAL_OBJECTS =

../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/lib/signal_functions.c.o
../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/error_functions.c.o
../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/home/ubuntu/Documents/C/TLPILearning/lib/get_num.c.o
../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/src/t_sigqueue.c.o
../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/build.make
../bin/T_SIGQUEUE: CMakeFiles/T_SIGQUEUE.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking C executable ../bin/T_SIGQUEUE"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/T_SIGQUEUE.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/T_SIGQUEUE.dir/build: ../bin/T_SIGQUEUE
.PHONY : CMakeFiles/T_SIGQUEUE.dir/build

CMakeFiles/T_SIGQUEUE.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/T_SIGQUEUE.dir/cmake_clean.cmake
.PHONY : CMakeFiles/T_SIGQUEUE.dir/clean

CMakeFiles/T_SIGQUEUE.dir/depend:
	cd /home/ubuntu/Documents/C/TLPILearning/signals/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ubuntu/Documents/C/TLPILearning/signals /home/ubuntu/Documents/C/TLPILearning/signals /home/ubuntu/Documents/C/TLPILearning/signals/build /home/ubuntu/Documents/C/TLPILearning/signals/build /home/ubuntu/Documents/C/TLPILearning/signals/build/CMakeFiles/T_SIGQUEUE.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/T_SIGQUEUE.dir/depend

