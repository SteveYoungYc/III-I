# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "E:\Clion\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "E:\Clion\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = D:\SJTU\EngInnovation\car

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = D:\SJTU\EngInnovation\car\cmake-build-debug

# Utility rule file for car-upload.

# Include the progress variables for this target.
include CMakeFiles/car-upload.dir/progress.make

CMakeFiles/car-upload: car.elf
	"C:\Program Files\Arduino\hardware\tools\avr\bin\avrdude.exe" "-CC:/Program Files/Arduino/hardware/tools/avr/etc/avrdude.conf" -patmega328p -carduino -b9600 -PCOM12 -D -V -Uflash:w:D:/SJTU/EngInnovation/car/cmake-build-debug/car.hex:i -Ueeprom:w:D:/SJTU/EngInnovation/car/cmake-build-debug/car.eep:i

car-upload: CMakeFiles/car-upload
car-upload: CMakeFiles/car-upload.dir/build.make

.PHONY : car-upload

# Rule to build all files generated by this target.
CMakeFiles/car-upload.dir/build: car-upload

.PHONY : CMakeFiles/car-upload.dir/build

CMakeFiles/car-upload.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\car-upload.dir\cmake_clean.cmake
.PHONY : CMakeFiles/car-upload.dir/clean

CMakeFiles/car-upload.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\SJTU\EngInnovation\car D:\SJTU\EngInnovation\car D:\SJTU\EngInnovation\car\cmake-build-debug D:\SJTU\EngInnovation\car\cmake-build-debug D:\SJTU\EngInnovation\car\cmake-build-debug\CMakeFiles\car-upload.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/car-upload.dir/depend

