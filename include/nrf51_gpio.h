/**
 * GPIO Drivers for the NRF51422 board.
 * Register source code and offsets is based on nRF51_RM_v3.0, "nRF51 Series Reference Manual"
 * Original  URL for reference manual: https://infocenter.nordicsemi.com/pdf/nRF51_RM_v3.0.pdf
 * 
 * Author: ASethi
 */

#ifndef __NRF51_GPIO__
#define __NRF51_GPIO__

#ifdef __cplusplus
#include <cstdint>
#include <cstddef>
#else
#include <stdint.h>
#include <stddef.h>
#endif

#define NEWHAL_NRF_GPIO_BASE 0x50000000U
#define NEWHAL_NRF_NUM_GPIO 32U

typedef uint32_t NrfGpioPinCfg;

enum class NrfGpioInputBufferConnected : uint32_t
{
    CONNECTED,
    DISCONNECTED
};

enum class NrfGpioPullupCfg : uint32_t
{
    DISABLED = 0,
    PULLDOWN = 1,
    PULLUP   = 3
};

enum class NrfGpioDriveCfg : uint32_t
{
    S0S1,
    H0S1,
    S0H1,
    H0H1,
    D0S1,
    D0H1,
    S0D1,
    H0D1
};

enum class NrfGpioSenseCfg : uint32_t
{
    DISABLED = 0,
    SENSE_HI = 2,
    SENSE_LO = 3
};

enum class NrfGpioPinDirection : uint32_t
{
    IN,
    OUT
};

typedef struct __attribute__((packed)) _NrfGpioReg {
    volatile uint8_t __unused_start[1284];                  // Note: Per pg. 57 of nRF51_RM_v3.0.pdf 
    volatile uint32_t out;                                  // Write GPIO port (NOTE: THIS WRITES ALL 32 GPIO OUTPUTS AT THE SAME TIME)
    volatile uint32_t outset;                               // Set individual bits in GPIO port
    volatile uint32_t outclr;                               // Clear individual bits in GPIO port
    volatile uint32_t in;                                   // Read GPIO port (NOTE: THIS READS ALL 32 GPIO OUTPUTS AT THE SAME TIME)
    volatile uint32_t dir;                                  // Direction of GPIO pins
    volatile uint32_t dirset;                               // DIR set register
    volatile uint32_t dirclr;                               // DIR clear register
    volatile uint8_t __unused_cnf_pad[480];                 // Padding between GPIO direction registers and PIN_CNF registers.
                                                            //      Calculated as (PIN_CNF start offset (0x700) - (DIRCLR offset (0x51C) + 4 bytes))
    volatile NrfGpioPinCfg pin_cnf[NEWHAL_NRF_NUM_GPIO];    // PIN_CNF[0] -> PIN_CNF[31]
} NrfGpioHandle_t;

extern NrfGpioHandle_t * const NRF_GPIO_HANDLE;

static inline void newhal_nrf_gpio_pin_cfg(size_t pin_number,
                             NrfGpioPinDirection dir,
                             NrfGpioInputBufferConnected buffer,
                             NrfGpioPullupCfg pullup,
                             NrfGpioDriveCfg drive,
                             NrfGpioSenseCfg sense)
{
    uint32_t new_pin_cnf = 0;
    new_pin_cnf = (
        static_cast<uint32_t>(dir)             |
        (static_cast<uint32_t>(buffer) << 1U)  |
        (static_cast<uint32_t>(pullup) << 2U)  |
        (static_cast<uint32_t>(drive) << 7U)   |
        (static_cast<uint32_t>(sense) << 15U)
    );
    
    NRF_GPIO_HANDLE->pin_cnf[pin_number] = new_pin_cnf;
}

static inline void newhal_nrf_gpio_set_direction(size_t pin_number, NrfGpioPinDirection direction)
{
    if (direction == NrfGpioPinDirection::IN)
    {
        NRF_GPIO_HANDLE->dirclr = (1 << pin_number);
    } else { // direction == NrfGpioDirection::OUT
        NRF_GPIO_HANDLE->dirset = (1 << pin_number);
    }
}

static inline void newhal_nrf_gpio_set_pin(size_t pin_number)
{
    NRF_GPIO_HANDLE->outset = (1 << pin_number);
}

static inline void newhal_nrf_gpio_clear_pin(size_t pin_number)
{
    NRF_GPIO_HANDLE->outclr = (1 << pin_number);
}

static inline uint8_t newhal_nrf_gpio_read_pin(size_t pin_number)
{
    return (NRF_GPIO_HANDLE->in & (1 << pin_number)) == 0; 
}

#endif