set(BLINKY_SOURCES
    main.c
    )

# set(BLINKY_OUTFILE blinky)
add_executable(blinky ${BLINKY_SOURCES} ${NRF_SDK_SOURCES})

target_include_directories(blinky PUBLIC
    ${NRF_SDK_INCLUDE_DIRECTORIES}
    ${PROJECT_SOURCE_DIR}/include
)

target_compile_definitions(blinky PUBLIC
    NRF51
    NRF51422
    BOARD_PCA10028
    BSP_DEFINES_ONLY
    SW_DISABLE0
)

target_link_directories(blinky PUBLIC
    ${NRF_SDK_ROOT}/components/toolchain/gcc
)

target_link_options(blinky PUBLIC
    -T${PROJECT_SOURCE_DIR}/board/blinky.ld
)

add_custom_command(
        TARGET blinky
        COMMAND ${ELF_SIZE_COMMAND} blinky
        COMMAND ${ELF_OBJCOPY_COMMAND} -O ihex blinky blinky.hex
        COMMAND ${OBJCOPY_COMMAND} -O binary blinky blinky.bin
)