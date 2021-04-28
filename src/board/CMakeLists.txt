set(STARTUP_SOURCES nrf51_startup.S)
set(STARTUP_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include/board)

add_library(Startup STATIC ${STARTUP_SOURCES})
target_include_directories(Startup PRIVATE ${NRF5_MDK_ROOT} ${STARTUP_INCLUDE_DIR})
target_compile_definitions(Startup PRIVATE NRF51 __STARTUP_CONFIG)

set(ROWR_SOURCES system_nrf51.c)
add_executable(Rowr ${ROWR_SOURCES})
target_link_libraries(Rowr PUBLIC Startup)
target_include_directories(Rowr PRIVATE ${NRF5_MDK_ROOT} ${NRF5_CMSIS_HAL_ROOT})
target_compile_definitions(Rowr PRIVATE NRF51)