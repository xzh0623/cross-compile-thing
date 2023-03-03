cmake_minimum_required(VERSION 3.10.0)
project(CrossCompile VERSION 0.1.0)

add_executable(CrossCompile main.c)

set(CMAKE_SYSTEM_NAME Linux)
set(CMAKE_SYSTEM_PROCESSOR arm)

if(CMAKE_C_COMPILER_ID STREQUAL "Clang")
    set(triple aarch64-linux-gnu)

    set(CMAKE_C_COMPILER clang)
    set(CMAKE_C_COMPILER_TARGET ${triple})
    set(CMAKE_CXX_COMPILER clang++)
    set(CMAKE_CXX_COMPILER_TARGET ${triple})
endif()

# set(CMAKE_FIND_ROOT_PATH /usr/aarch64-linux-gnu)
# set(CMAKE_SYSROOT /usr/aarch64-linux-gnu)

set(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)
set(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)
set(CMAKE_FIND_ROOT_PATH_MODE_PACKAGE ONLY)

target_compile_options(CrossCompile PRIVATE)
