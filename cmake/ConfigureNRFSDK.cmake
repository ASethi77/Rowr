set(NRF_SDK_ROOT "${PROJECT_SOURCE_DIR}/nrf51_sdk")
# set(NRF_SDK_INCLUDE_DIRECTORIES
#     ${NRF_SDK_ROOT}/components/boards

#     ${NRF_SDK_ROOT}/components/device

#     ${NRF_SDK_ROOT}/components/drivers_nrf/adc
#     ${NRF_SDK_ROOT}/components/drivers_nrf/delay
#     ${NRF_SDK_ROOT}/components/drivers_nrf/hal
#     ${NRF_SDK_ROOT}/components/drivers_nrf/nrf_soc_nosd

#     ${NRF_SDK_ROOT}/components/toolchain
#     ${NRF_SDK_ROOT}/components/toolchain/cmsis/include

#     ${NRF_SDK_ROOT}/components/libraries/log
#     ${NRF_SDK_ROOT}/components/libraries/log/src
#     ${NRF_SDK_ROOT}/components/libraries/util
#     )

set(NRF_SDK_INCLUDE_DIRECTORIES
    ${NRF_SDK_ROOT}/components/drivers_nrf/comp 
    ${NRF_SDK_ROOT}/components/drivers_nrf/twi_master 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_ancs_c 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_ias_c 
    ${NRF_SDK_ROOT}/components/libraries/pwm 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/cdc/acm 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/hid/generic 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/msc 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/hid 
    ${NRF_SDK_ROOT}/components/libraries/log 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_gls 
    ${NRF_SDK_ROOT}/components/libraries/fstorage 
    ${NRF_SDK_ROOT}/components/drivers_nrf/i2s 
    ${NRF_SDK_ROOT}/components/libraries/gpiote 
    ${NRF_SDK_ROOT}/components/drivers_nrf/gpiote 
    ${NRF_SDK_ROOT}/components/drivers_nrf/nrf_soc_nosd 
    ${NRF_SDK_ROOT}/components/boards 
    ${NRF_SDK_ROOT}/components/drivers_nrf/common 
    ${NRF_SDK_ROOT}/components/ble/ble_advertising 
    ${NRF_SDK_ROOT}/components/drivers_nrf/adc 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_bas_c 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_hrs_c 
    ${NRF_SDK_ROOT}/components/libraries/queue 
    ${NRF_SDK_ROOT}/components/ble/ble_dtm 
    ${NRF_SDK_ROOT}/components/toolchain/cmsis/include 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_rscs_c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/uart 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/hid/kbd 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_lls 
    ${NRF_SDK_ROOT}/components/drivers_nrf/wdt 
    ${NRF_SDK_ROOT}/components/libraries/bsp 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_bas 
    ${NRF_SDK_ROOT}/components/libraries/experimental_section_vars 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_ans_c 
    ${NRF_SDK_ROOT}/components/libraries/slip 
    ${NRF_SDK_ROOT}/external/segger_rtt 
    ${NRF_SDK_ROOT}/components/libraries/csense_drv 
    ${NRF_SDK_ROOT}/components/drivers_nrf/hal 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_nus_c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/rtc 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_ias 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/hid/mouse 
    ${NRF_SDK_ROOT}/components/drivers_nrf/ppi 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_dfu 
    ${NRF_SDK_ROOT}/components/drivers_nrf/twis_slave 
    ${NRF_SDK_ROOT}/components 
    ${NRF_SDK_ROOT}/components/drivers_nrf/usbd 
    ${NRF_SDK_ROOT}/components/libraries/scheduler 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_lbs 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_hts 
    ${NRF_SDK_ROOT}/components/drivers_nrf/delay 
    ${NRF_SDK_ROOT}/components/libraries/crc16 
    ${NRF_SDK_ROOT}/components/drivers_nrf/timer 
    ${NRF_SDK_ROOT}/components/libraries/util 
    ${NRF_SDK_ROOT}/components/drivers_nrf/pwm 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/cdc 
    ${NRF_SDK_ROOT}/components/libraries/csense 
    ${NRF_SDK_ROOT}/components/drivers_nrf/rng 
    ${NRF_SDK_ROOT}/components/libraries/low_power_pwm 
    ${NRF_SDK_ROOT}/components/libraries/hardfault 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_cscs 
    ${NRF_SDK_ROOT}/components/libraries/uart 
    ${NRF_SDK_ROOT}/components/libraries/hci 
    ${NRF_SDK_ROOT}/components/drivers_nrf/spi_slave 
    ${NRF_SDK_ROOT}/components/drivers_nrf/lpcomp 
    ${NRF_SDK_ROOT}/components/libraries/timer 
    ${NRF_SDK_ROOT}/components/drivers_nrf/power 
    ${NRF_SDK_ROOT}/components/libraries/usbd/config 
    ${NRF_SDK_ROOT}/components/toolchain 
    ${NRF_SDK_ROOT}/components/libraries/led_softblink 
    ${NRF_SDK_ROOT}/components/drivers_nrf/qdec 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_cts_c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/spi_master 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_nus 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_hids 
    ${NRF_SDK_ROOT}/components/drivers_nrf/pdm 
    ${NRF_SDK_ROOT}/components/libraries/crc32 
    ${NRF_SDK_ROOT}/components/libraries/usbd/class/audio 
    ${NRF_SDK_ROOT}/components/ble/peer_manager 
    ${NRF_SDK_ROOT}/components/libraries/mem_manager 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_tps 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_dis 
    ${NRF_SDK_ROOT}/components/device 
    ${NRF_SDK_ROOT}/components/ble/nrf_ble_qwr 
    ${NRF_SDK_ROOT}/components/libraries/button 
    ${NRF_SDK_ROOT}/components/libraries/usbd 
    ${NRF_SDK_ROOT}/components/drivers_nrf/saadc 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_lbs_c 
    ${NRF_SDK_ROOT}/components/ble/ble_racp 
    ${NRF_SDK_ROOT}/components/toolchain/gcc 
    ${NRF_SDK_ROOT}/components/libraries/fds 
    ${NRF_SDK_ROOT}/components/libraries/twi 
    ${NRF_SDK_ROOT}/components/drivers_nrf/clock 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_rscs 
    ${NRF_SDK_ROOT}/components/drivers_nrf/swi 
    ${NRF_SDK_ROOT}/components/ble/ble_services/ble_hrs 
    ${NRF_SDK_ROOT}/components/libraries/log/src 
# ../config 
)

set(NRF_SDK_SOURCES
    ${NRF_SDK_ROOT}/components/libraries/log/src/nrf_log_backend_serial.c 
    ${NRF_SDK_ROOT}/components/libraries/log/src/nrf_log_frontend.c 
    ${NRF_SDK_ROOT}/components/libraries/util/app_error.c 
    ${NRF_SDK_ROOT}/components/libraries/util/app_error_weak.c 
    ${NRF_SDK_ROOT}/components/libraries/timer/app_timer.c 
    ${NRF_SDK_ROOT}/components/libraries/util/app_util_platform.c 
    ${NRF_SDK_ROOT}/components/libraries/hardfault/hardfault_implementation.c 
    ${NRF_SDK_ROOT}/components/libraries/util/nrf_assert.c 
    ${NRF_SDK_ROOT}/components/libraries/util/sdk_errors.c 
    ${NRF_SDK_ROOT}/components/boards/boards.c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/clock/nrf_drv_clock.c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/common/nrf_drv_common.c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/uart/nrf_drv_uart.c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/nrf_soc_nosd/nrf_nvic.c 
    ${NRF_SDK_ROOT}/components/drivers_nrf/nrf_soc_nosd/nrf_soc.c 
    ${NRF_SDK_ROOT}/external/segger_rtt/RTT_Syscalls_GCC.c 
    ${NRF_SDK_ROOT}/external/segger_rtt/SEGGER_RTT.c 
    ${NRF_SDK_ROOT}/external/segger_rtt/SEGGER_RTT_printf.c 
    ${NRF_SDK_ROOT}/components/toolchain/gcc/gcc_startup_nrf51.S 
    ${NRF_SDK_ROOT}/components/toolchain/system_nrf51.c 
)