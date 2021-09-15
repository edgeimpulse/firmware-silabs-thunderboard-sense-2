/***************************************************************************//**
 * @file
 * @brief Simple RGBW PWM LED Driver Instances
 *******************************************************************************
 * # License
 * <b>Copyright 2020 Silicon Laboratories Inc. www.silabs.com</b>
 *******************************************************************************
 *
 * The licensor of this software is Silicon Laboratories Inc.  Your use of this
 * software is governed by the terms of Silicon Labs Master Software License
 * Agreement (MSLA) available at
 * www.silabs.com/about-us/legal/master-software-license-agreement.  This
 * software is distributed to you in Source Code format and is governed by the
 * sections of the MSLA applicable to Source Code.
 *
 ******************************************************************************/

#include "sl_simple_rgbw_pwm_led.h"
#include "em_gpio.h"

#include "sl_simple_rgbw_pwm_led_led_rgb_config.h"



sl_simple_rgbw_pwm_led_context_t simple_rgbw_pwm_led_rgb_context = {
  .port[SL_SIMPLE_RGBW_PWM_LED_COLOR_R] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_PORT,
  .pin[SL_SIMPLE_RGBW_PWM_LED_COLOR_R] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_PIN,
  .polarity[SL_SIMPLE_RGBW_PWM_LED_COLOR_R] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_POLARITY,
  .channel[SL_SIMPLE_RGBW_PWM_LED_COLOR_R] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_CHANNEL,
#if defined(SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_LOC)
  .location[SL_SIMPLE_RGBW_PWM_LED_COLOR_R] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RED_LOC,
#endif
  .port[SL_SIMPLE_RGBW_PWM_LED_COLOR_G] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_PORT,
  .pin[SL_SIMPLE_RGBW_PWM_LED_COLOR_G] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_PIN,
  .polarity[SL_SIMPLE_RGBW_PWM_LED_COLOR_G] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_POLARITY,
  .channel[SL_SIMPLE_RGBW_PWM_LED_COLOR_G] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_CHANNEL,
#if defined(SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_LOC)
  .location[SL_SIMPLE_RGBW_PWM_LED_COLOR_G] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_GREEN_LOC,
#endif
  .port[SL_SIMPLE_RGBW_PWM_LED_COLOR_B] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_PORT,
  .pin[SL_SIMPLE_RGBW_PWM_LED_COLOR_B] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_PIN,
  .polarity[SL_SIMPLE_RGBW_PWM_LED_COLOR_B] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_POLARITY,
  .channel[SL_SIMPLE_RGBW_PWM_LED_COLOR_B] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_CHANNEL,
#if defined(SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_LOC)
  .location[SL_SIMPLE_RGBW_PWM_LED_COLOR_B] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_BLUE_LOC,
#endif
  .port[SL_SIMPLE_RGBW_PWM_LED_COLOR_W] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_PORT,
  .pin[SL_SIMPLE_RGBW_PWM_LED_COLOR_W] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_PIN,
  .polarity[SL_SIMPLE_RGBW_PWM_LED_COLOR_W] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_POLARITY,
  .channel[SL_SIMPLE_RGBW_PWM_LED_COLOR_W] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_CHANNEL,
#if defined(SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_LOC)
  .location[SL_SIMPLE_RGBW_PWM_LED_COLOR_W] = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_WHITE_LOC,
#endif
  .timer = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_PERIPHERAL,
  .frequency = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_FREQUENCY,
  .resolution = SL_SIMPLE_RGBW_PWM_LED_LED_RGB_RESOLUTION,
};

const sl_led_rgbw_pwm_t sl_led_rgb = {
  .led_common.context = &simple_rgbw_pwm_led_rgb_context,
  .led_common.init = sl_simple_rgbw_pwm_led_init,
  .led_common.turn_on = sl_simple_rgbw_pwm_led_turn_on,
  .led_common.turn_off = sl_simple_rgbw_pwm_led_turn_off,
  .led_common.toggle = sl_simple_rgbw_pwm_led_toggle,
  .led_common.get_state = sl_simple_rgbw_pwm_led_get_state,
  .set_rgbw_color = sl_simple_rgbw_pwm_led_set_color,
  .get_rgbw_color = sl_simple_rgbw_pwm_led_get_color,
};



void sl_simple_rgbw_pwm_led_init_instances(void)
{
  
  sl_led_init((sl_led_t *)&sl_led_rgb);
  
}
