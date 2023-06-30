/* Edge Impulse ingestion SDK
 * Copyright (c) 2022 EdgeImpulse Inc.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
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
