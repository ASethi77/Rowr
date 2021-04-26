# See https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html

set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(CMAKE_C_COMPILER_TARGET ${CLANG_TARGET_TRIPLE})
set(CMAKE_CXX_COMPILER_TARGET ${CLANG_TARGET_TRIPLE})

# By default Clang will try to link libc, libm, and clang_rt_builtins_armv6m,
# use -nostdlib to avoid that
set(NOSTDLIB_FLAG "-nostdlib")
set(ARCH_FLAGS "-mthumb -mcpu=cortex-m0 -mfloat-abi=soft")
set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${NOSTDLIB_FLAG} ${ARCH_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${NOSTDLIB_FLAG} ${ARCH_FLAGS}")

find_program(ARM_GCC arm-none-eabi-gcc)
if(ARM_GCC MATCHES "ARM_GCC-NOTFOUND")
    message(FATAL_ERROR "Cannot find arm-none-eabi-gcc install, therefore unable to assign sysroot for cross-compiling")
endif(ARM_GCC MATCHES "ARM_GCC-NOTFOUND")