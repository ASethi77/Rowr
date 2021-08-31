# See https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html

set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(GCC_BINS "/bin")
set(GCC_ROOT "/usr/lib/gcc/arm-none-eabi/9.2.1")
set(ELF_SIZE_COMMAND "${GCC_BINS}/arm-none-eabi-size")
set(ELF_OBJCOPY_COMMAND "${GCC_BINS}/arm-none-eabi-objcopy")

set(CMAKE_C_COMPILER ${GCC_BINS}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${GCC_BINS}/arm-none-eabi-g++)

set(LIBC_SPECS "--specs=nano.specs -lc -lm -lnosys")
set(ARCH_FLAGS "-mthumb -mcpu=cortex-m0 -mfloat-abi=soft -mabi=aapcs")
set(ASM_FLAGS "-x assembler-with-cpp")

set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} ${LIBC_SPECS} ${ARCH_FLAGS}")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} ${LIBC_SPECS} ${ARCH_FLAGS}")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} ${ASM_FLAGS}")