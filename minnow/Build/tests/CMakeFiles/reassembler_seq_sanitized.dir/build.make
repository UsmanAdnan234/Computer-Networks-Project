# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

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
CMAKE_SOURCE_DIR = /home/vengeance/minnow

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vengeance/minnow/build

# Include any dependencies generated for this target.
include tests/CMakeFiles/reassembler_seq_sanitized.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/reassembler_seq_sanitized.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/reassembler_seq_sanitized.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/reassembler_seq_sanitized.dir/flags.make

tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o: tests/CMakeFiles/reassembler_seq_sanitized.dir/flags.make
tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o: /home/vengeance/minnow/tests/reassembler_seq.cc
tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o: tests/CMakeFiles/reassembler_seq_sanitized.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/home/vengeance/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o"
	cd /home/vengeance/minnow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o -MF CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o.d -o CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o -c /home/vengeance/minnow/tests/reassembler_seq.cc

tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.i"
	cd /home/vengeance/minnow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vengeance/minnow/tests/reassembler_seq.cc > CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.i

tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.s"
	cd /home/vengeance/minnow/build/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vengeance/minnow/tests/reassembler_seq.cc -o CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.s

# Object files for target reassembler_seq_sanitized
reassembler_seq_sanitized_OBJECTS = \
"CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o"

# External object files for target reassembler_seq_sanitized
reassembler_seq_sanitized_EXTERNAL_OBJECTS =

tests/reassembler_seq_sanitized: tests/CMakeFiles/reassembler_seq_sanitized.dir/reassembler_seq.cc.o
tests/reassembler_seq_sanitized: tests/CMakeFiles/reassembler_seq_sanitized.dir/build.make
tests/reassembler_seq_sanitized: tests/libminnow_testing_sanitized.a
tests/reassembler_seq_sanitized: src/libminnow_sanitized.a
tests/reassembler_seq_sanitized: util/libutil_sanitized.a
tests/reassembler_seq_sanitized: tests/CMakeFiles/reassembler_seq_sanitized.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/home/vengeance/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable reassembler_seq_sanitized"
	cd /home/vengeance/minnow/build/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/reassembler_seq_sanitized.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/reassembler_seq_sanitized.dir/build: tests/reassembler_seq_sanitized
.PHONY : tests/CMakeFiles/reassembler_seq_sanitized.dir/build

tests/CMakeFiles/reassembler_seq_sanitized.dir/clean:
	cd /home/vengeance/minnow/build/tests && $(CMAKE_COMMAND) -P CMakeFiles/reassembler_seq_sanitized.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/reassembler_seq_sanitized.dir/clean

tests/CMakeFiles/reassembler_seq_sanitized.dir/depend:
	cd /home/vengeance/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vengeance/minnow /home/vengeance/minnow/tests /home/vengeance/minnow/build /home/vengeance/minnow/build/tests /home/vengeance/minnow/build/tests/CMakeFiles/reassembler_seq_sanitized.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/reassembler_seq_sanitized.dir/depend

