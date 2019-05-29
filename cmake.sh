#!/bin/bash

# set cmake version and project
cmake_minimum_required( VERSION 3.8.3 )
project( your_project_name )

# set c++ compiler setting
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g -O0")

# set exe/lib file output path
set( EXECUTABLE_OUTPUT_PATH ${PROJECT_SOURCE_DIR}/bin )
set( LIBRARY_OUTPUT_PATH    ${PROJECT_SOURCE_DIR}/lib )

# set variable
set( SOURCE_FILES xxx0.cpp xxx1.cpp xxx2.cpp)

# output status message
message( STATUS "This is Binary dir " ${PROJECT_BINARY_DIR} )
message( STATUS "This is Source dir " ${PROJECT_SOURCE_DIR} )

#----------------------------------------------------------------------------
# search include file
include_directories( "/xxx0/include/" "/xxx1/include/" )

# generate exe file
add_executable( exec_file_name ${SOURCE_FILES} )
target_link_libraries( exec_file_name "xxx0/lib/xxx.so" "xxx1/lib/xxx.a" )

# generate shared lib file 
add_library( dyn_lib_name SHARED ${SOURCE_FILES} )
target_link_libraries( dyn_lib_name "xxx0/lib/xxx.so" "xxx1/lib/xxx.a" )

# generate static lib file
add_library( static_lib_name STATIC ${SOURCE_FILES} )
target_link_libraries( static_lib_name "xxx0/lib/xxx.so" "xxx1/lib/xxx.a" )

#----------------------------------------------------------------------------

# add sub cmakelists.txt file
add_subdirectory( src )








