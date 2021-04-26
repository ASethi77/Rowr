cmake_minimum_required(VERSION 3.4.0)

project(Rowr)

enable_language(CXX)
enable_language(ASM)

# Dependency management. Ensure that the Nordic SDK exists
if (EXISTS ${PROJECT_SOURCE_DIR}/thirdparty/nrf5_sdk_17.0.2)
    set(NRF5_SDK_ROOT ${PROJECT_SOURCE_DIR}/thirdparty/nrf5_sdk_17.0.2)
    set(NRF5_MDK_ROOT ${NRF5_SDK_ROOT}/modules/nrfx/mdk)
else ()
    message(FATAL_ERROR "The Nordic NRF5 SDK (version 17.0.2) is required to build this project.")
endif ()

add_subdirectory(src)
add_subdirectory(include)
