/* Copyright (c) 2014 Nordic Semiconductor. All Rights Reserved.
 *
 * The information contained herein is property of Nordic Semiconductor ASA.
 * Terms and conditions of usage are described in detail in NORDIC
 * SEMICONDUCTOR STANDARD SOFTWARE LICENSE AGREEMENT.
 *
 * Licensees are granted free, non-transferable use of the information. NO
 * WARRANTY of ANY KIND is provided. This heading must NOT be removed from
 * the file.
 *
 */

/** @file
 *
 * @defgroup blinky_example_main main.c
 * @{
 * @ingroup blinky_example
 * @brief Blinky Example Application main file.
 *
 * This file contains the source code for a sample application to blink LEDs.
 *
 */

#include <cstdbool>
#include <cstdint>

extern "C"
{
#include "boards.h"
#include "nrf_delay.h"
}

#include "nrf51_gpio.h"

/**
 * @brief Function for application main entry.
 */
int main(void)
{
    const size_t NUM_LEDS {4};
    const size_t led_pins[NUM_LEDS] {21, 22, 23, 24};

    for (auto led : led_pins)
    {
        newhal_nrf_gpio_set_direction(led, NrfGpioPinDirection::OUT);
    }

    /* Configure board. */
    // bsp_board_leds_init();

    /* Toggle LEDs. */
    while (true)
    {
        newhal_nrf_gpio_set_pin(led_pins[0]);
        newhal_nrf_gpio_set_pin(led_pins[3]);

        nrf_delay_ms(200);

        newhal_nrf_gpio_set_pin(led_pins[1]);
        newhal_nrf_gpio_set_pin(led_pins[2]);

        nrf_delay_ms(200);

        newhal_nrf_gpio_clear_pin(led_pins[0]);
        newhal_nrf_gpio_clear_pin(led_pins[3]);

        nrf_delay_ms(200);

        newhal_nrf_gpio_clear_pin(led_pins[1]);
        newhal_nrf_gpio_clear_pin(led_pins[2]);

        nrf_delay_ms(200);
        // for (size_t i = 0; i < NUM_LEDS; i++)
        // {
        //     bsp_board_led_invert(i);
        //     nrf_delay_ms(100);
        // }
    }
}

/**
 *@}
 **/
