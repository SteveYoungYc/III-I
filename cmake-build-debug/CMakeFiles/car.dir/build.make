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

# Include any dependencies generated for this target.
include CMakeFiles/car.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/car.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/car.dir/flags.make

car_car.ino.cpp: ../car.ino
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=D:\SJTU\EngInnovation\car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Regnerating car.ino Sketch"
	"E:\Clion\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" D:/SJTU/EngInnovation/car

CMakeFiles/car.dir/car_car.ino.cpp.obj: CMakeFiles/car.dir/flags.make
CMakeFiles/car.dir/car_car.ino.cpp.obj: car_car.ino.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=D:\SJTU\EngInnovation\car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/car.dir/car_car.ino.cpp.obj"
	C:\PROGRA~1\Arduino\hardware\tools\avr\bin\avr-g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\car.dir\car_car.ino.cpp.obj -c D:\SJTU\EngInnovation\car\cmake-build-debug\car_car.ino.cpp

CMakeFiles/car.dir/car_car.ino.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/car.dir/car_car.ino.cpp.i"
	C:\PROGRA~1\Arduino\hardware\tools\avr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E D:\SJTU\EngInnovation\car\cmake-build-debug\car_car.ino.cpp > CMakeFiles\car.dir\car_car.ino.cpp.i

CMakeFiles/car.dir/car_car.ino.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/car.dir/car_car.ino.cpp.s"
	C:\PROGRA~1\Arduino\hardware\tools\avr\bin\avr-g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S D:\SJTU\EngInnovation\car\cmake-build-debug\car_car.ino.cpp -o CMakeFiles\car.dir\car_car.ino.cpp.s

# Object files for target car
car_OBJECTS = \
"CMakeFiles/car.dir/car_car.ino.cpp.obj"

# External object files for target car
car_EXTERNAL_OBJECTS =

car.elf: CMakeFiles/car.dir/car_car.ino.cpp.obj
car.elf: CMakeFiles/car.dir/build.make
car.elf: libuno_CORE.a
car.elf: CMakeFiles/car.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=D:\SJTU\EngInnovation\car\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable car.elf"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\car.dir\link.txt --verbose=$(VERBOSE)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating EEP image"
	"C:\Program Files\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -j .eeprom --set-section-flags=.eeprom=alloc,load --no-change-warnings --change-section-lma .eeprom=0 D:/SJTU/EngInnovation/car/cmake-build-debug/car.elf D:/SJTU/EngInnovation/car/cmake-build-debug/car.eep
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating HEX image"
	"C:\Program Files\Arduino\hardware\tools\avr\bin\avr-objcopy.exe" -O ihex -R .eeprom D:/SJTU/EngInnovation/car/cmake-build-debug/car.elf D:/SJTU/EngInnovation/car/cmake-build-debug/car.hex
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Calculating image size"
	"E:\Clion\CLion 2020.1.2\bin\cmake\win\bin\cmake.exe" -DFIRMWARE_IMAGE=D:/SJTU/EngInnovation/car/cmake-build-debug/car.elf -DMCU=atmega328p -DEEPROM_IMAGE=D:/SJTU/EngInnovation/car/cmake-build-debug/car.eep -P D:/SJTU/EngInnovation/car/cmake-build-debug/CMakeFiles/FirmwareSize.cmake

# Rule to build all files generated by this target.
CMakeFiles/car.dir/build: car.elf

.PHONY : CMakeFiles/car.dir/build

CMakeFiles/car.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\car.dir\cmake_clean.cmake
.PHONY : CMakeFiles/car.dir/clean

CMakeFiles/car.dir/depend: car_car.ino.cpp
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" D:\SJTU\EngInnovation\car D:\SJTU\EngInnovation\car D:\SJTU\EngInnovation\car\cmake-build-debug D:\SJTU\EngInnovation\car\cmake-build-debug D:\SJTU\EngInnovation\car\cmake-build-debug\CMakeFiles\car.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/car.dir/depend

