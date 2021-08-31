cmake_minimum_required(VERSION 3.13.4)

if(NOT DEFINED ROWER_VERSION_MAJOR)
  set(ROWER_VERSION_MAJOR 0)
endif()
if(NOT DEFINED ROWER_VERSION_MINOR)
  set(ROWER_VERSION_MINOR 1)
endif()
if(NOT DEFINED ROWER_VERSION_PATCH)
  set(ROWER_VERSION_PATCH 0)
endif()
if(NOT DEFINED ROWER_VERSION_SUFFIX)
  set(LLVM_VERSION_SUFFIX demo)
endif()

set(CMAKE_VERBOSE_MAKEFILE OFF)

project(Rower
    VERSION ${ROWER_VERSION_MAJOR}.${ROWER_VERSION_MINOR}.${ROWER_VERSION_PATCH}
    LANGUAGES C CXX ASM
)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED YES)

add_compile_options(
    -Wall
    -Werror
    -O3
    -g3
    -ffunction-sections
    -fdata-sections
    -fno-strict-aliasing
    -fno-builtin
    --short-enums
)

include(cmake/ConfigureNRFSDK.cmake)

add_subdirectory(src)