# See https://cmake.org/cmake/help/latest/manual/cmake-toolchains.7.html

set(CMAKE_CROSSCOMPILING TRUE)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)

set(GCC_BINS "/opt/gcc-arm-none-eabi-9/bin")
set(GCC_ROOT "/opt/gcc-arm-none-eabi/9.2.1")
set(ELF_SIZE_COMMAND "${GCC_BINS}/arm-none-eabi-size")
set(ELF_OBJCOPY_COMMAND "${GCC_BINS}/arm-none-eabi-objcopy")

set(CMAKE_C_COMPILER ${GCC_BINS}/arm-none-eabi-gcc)
set(CMAKE_CXX_COMPILER ${GCC_BINS}/arm-none-eabi-g++)

set(TOOLCHAIN_LD_FLAGS "--specs=nosys.specs -lc_nano -lnosys -lm -Wl,--gc-sections")
set(TOOLCHAIN_ARCH_FLAGS "-mthumb -mcpu=cortex-m0 -mfloat-abi=soft -mabi=aapcs")
set(TOOLCHAIN_ASM_FLAGS "-x assembler-with-cpp")

set(CMAKE_C_FLAGS_INIT "${TOOLCHAIN_ARCH_FLAGS} ${TOOLCHAIN_LD_FLAGS}")
set(CMAKE_CXX_FLAGS_INIT "${TOOLCHAIN_ARCH_FLAGS} ${TOOLCHAIN_LD_FLAGS}")
set(CMAKE_ASM_FLAGS_INIT "${TOOLCHAIN_ASM_FLAGS}")