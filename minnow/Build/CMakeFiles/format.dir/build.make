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

# Utility rule file for format.

# Include any custom commands dependencies for this target.
include CMakeFiles/format.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/format.dir/progress.make

CMakeFiles/format:
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/vengeance/minnow/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Formatting source code..."
	clang-format -i /home/vengeance/minnow/apps/bidirectional_stream_copy.cc /home/vengeance/minnow/apps/bidirectional_stream_copy.hh /home/vengeance/minnow/apps/tcp_native.cc /home/vengeance/minnow/apps/webget.cc /home/vengeance/minnow/src/byte_stream.cc /home/vengeance/minnow/src/byte_stream.hh /home/vengeance/minnow/src/byte_stream_helpers.cc /home/vengeance/minnow/src/reassembler.cc /home/vengeance/minnow/src/reassembler.hh /home/vengeance/minnow/tests/byte_stream_basics.cc /home/vengeance/minnow/tests/byte_stream_capacity.cc /home/vengeance/minnow/tests/byte_stream_many_writes.cc /home/vengeance/minnow/tests/byte_stream_one_write.cc /home/vengeance/minnow/tests/byte_stream_speed_test.cc /home/vengeance/minnow/tests/byte_stream_stress_test.cc /home/vengeance/minnow/tests/byte_stream_test_harness.hh /home/vengeance/minnow/tests/byte_stream_two_writes.cc /home/vengeance/minnow/tests/common.cc /home/vengeance/minnow/tests/common.hh /home/vengeance/minnow/tests/conversions.hh /home/vengeance/minnow/tests/reassembler_cap.cc /home/vengeance/minnow/tests/reassembler_dup.cc /home/vengeance/minnow/tests/reassembler_holes.cc /home/vengeance/minnow/tests/reassembler_overlapping.cc /home/vengeance/minnow/tests/reassembler_seq.cc /home/vengeance/minnow/tests/reassembler_single.cc /home/vengeance/minnow/tests/reassembler_speed_test.cc /home/vengeance/minnow/tests/reassembler_test_harness.hh /home/vengeance/minnow/tests/reassembler_win.cc /home/vengeance/minnow/tests/test_should_be.hh /home/vengeance/minnow/util/address.cc /home/vengeance/minnow/util/address.hh /home/vengeance/minnow/util/checksum.hh /home/vengeance/minnow/util/eventloop.cc /home/vengeance/minnow/util/eventloop.hh /home/vengeance/minnow/util/exception.hh /home/vengeance/minnow/util/file_descriptor.cc /home/vengeance/minnow/util/file_descriptor.hh /home/vengeance/minnow/util/ipv4_datagram.hh /home/vengeance/minnow/util/ipv4_header.cc /home/vengeance/minnow/util/ipv4_header.hh /home/vengeance/minnow/util/parser.hh /home/vengeance/minnow/util/random.cc /home/vengeance/minnow/util/random.hh /home/vengeance/minnow/util/socket.cc /home/vengeance/minnow/util/socket.hh /home/vengeance/minnow/util/tun.cc /home/vengeance/minnow/util/tun.hh

format: CMakeFiles/format
format: CMakeFiles/format.dir/build.make
.PHONY : format

# Rule to build all files generated by this target.
CMakeFiles/format.dir/build: format
.PHONY : CMakeFiles/format.dir/build

CMakeFiles/format.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/format.dir/cmake_clean.cmake
.PHONY : CMakeFiles/format.dir/clean

CMakeFiles/format.dir/depend:
	cd /home/vengeance/minnow/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vengeance/minnow /home/vengeance/minnow /home/vengeance/minnow/build /home/vengeance/minnow/build /home/vengeance/minnow/build/CMakeFiles/format.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/format.dir/depend

