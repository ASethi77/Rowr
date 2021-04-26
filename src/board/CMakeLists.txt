set(STARTUP_SOURCES nrf51_startup.S)
set(STARTUP_INCLUDE_DIR ${PROJECT_SOURCE_DIR}/include/board)

add_library(Startup STATIC ${STARTUP_SOURCES})
target_include_directories(Startup PRIVATE ${STARTUP_INCLUDE_DIR})
target_compile_definitions(Startup PRIVATE __STARTUP_CONFIG)