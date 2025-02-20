/* The Clear BSD License
 *
 * Copyright (c) 2025 EdgeImpulse Inc.
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted (subject to the limitations in the disclaimer
 * below) provided that the following conditions are met:
 *
 *   * Redistributions of source code must retain the above copyright notice,
 *   this list of conditions and the following disclaimer.
 *
 *   * Redistributions in binary form must reproduce the above copyright
 *   notice, this list of conditions and the following disclaimer in the
 *   documentation and/or other materials provided with the distribution.
 *
 *   * Neither the name of the copyright holder nor the names of its
 *   contributors may be used to endorse or promote products derived from this
 *   software without specific prior written permission.
 *
 * NO EXPRESS OR IMPLIED LICENSES TO ANY PARTY'S PATENT RIGHTS ARE GRANTED BY
 * THIS LICENSE. THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND
 * CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
 * LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
 * PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR
 * CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,
 * EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
 * PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
 * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER
 * IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 */

#include "ei_hall_sensor.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include "sl_si7210.h"
#include "sl_i2cspm_instances.h"
#include <cstdint>
#include <cstdlib>

#define HALL_THRESHOLD    3.0f  /* mT */
#define HALL_HYSTERESIS   0.5f  /* mT */
#define HALL_POLARITY     0x00  /* Omnipolar field polarity */
#define HALL_SCALE        50000 /* uT */
// if scale > 20500, sensor is using scale 200mT, otherwise 20mT
// see: https://www.silabs.com/documents/public/data-sheets/si7210-datasheet.pdf

static float mag_value;

bool ei_hall_sensor_init(void)
{
    sl_status_t ret = SL_STATUS_OK;
    sl_si7210_configure_t hall_config = {
        .threshold = HALL_THRESHOLD,
        .hysteresis = HALL_HYSTERESIS,
        .polarity = HALL_POLARITY,
        .output_invert = false
    };

    ei_sleep(1);
    ret = sl_si7210_init(sl_i2cspm_sensor);
    if(ret != SL_STATUS_OK) {
        ei_printf("ERR: failed to init hall sensor (0x%04lx)\n", ret);
        return false;
    }

    ret = sl_si7210_configure(sl_i2cspm_sensor, &hall_config);
    if(ret != SL_STATUS_OK) {
        ei_printf("ERR: failed to configure hall sensor (0x%04lx)\n", ret);
        return false;
    }

    if(ei_add_sensor_to_fusion_list(hall_sensor) == false) {
        ei_printf("ERR: failed to register Hall sensor!\n");
        return false;
    }

    return true;
}

float *ei_fusion_hall_sensor_read_data(int n_samples)
{
    sl_status_t ret = SL_STATUS_OK;

    ret = sl_si7210_measure(sl_i2cspm_sensor, HALL_SCALE, &mag_value);
    if(ret != SL_STATUS_OK) {
        mag_value = 0.0f;
    }

    return &mag_value;
}
