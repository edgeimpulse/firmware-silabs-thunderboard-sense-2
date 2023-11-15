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

#include <stdint.h>
#include <stdlib.h>
#include "ei_inertial_sensor.h"
#include "ei_sampler.h"
#include "ei_device_tb2.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include "firmware-sdk/sensor-aq/sensor_aq.h"
#include "sl_imu.h"
#include "sl_sleeptimer.h"
#include <cmath>

/* Constant defines -------------------------------------------------------- */
#define CONVERT_G_TO_MS2    9.80665f

sampler_callback inertial_cb_sampler;
static float imu_data[INERTIAL_AXIS_SAMPLED];
static sl_sleeptimer_timer_handle_t sample_timer;

bool ei_inertial_init(void)
{
    sl_status_t ret = 0;

    ret = sl_imu_init();
    if(ret != SL_STATUS_OK) {
        ei_printf("ERR: IMU init failed (0x%04lx)!\n", ret);
        return false;
    }

    sl_imu_configure(200);
    sl_imu_calibrate_gyro();

    if(ei_add_sensor_to_fusion_list(inertial_sensor) == false) {
        ei_printf("ERR: failed to register Inertial sensor!\n");
        return false;
    }

    return true;
}

static void sample_timer_callback(sl_sleeptimer_timer_handle_t *handle, void *data)
{
    if(sl_imu_is_data_ready()) {
        sl_imu_update();
        sl_imu_get_acceleration_raw_data(imu_data);
        imu_data[0] *= CONVERT_G_TO_MS2;
        imu_data[1] *= CONVERT_G_TO_MS2;
        imu_data[2] *= CONVERT_G_TO_MS2;
    }
    else {
        ei_printf("ERR: no Accel data!\n");
        imu_data[0] = 0.0f;
        imu_data[1] = 0.0f;
        imu_data[2] = 0.0f;
    }

    if(inertial_cb_sampler((const void *)&imu_data[0], SIZEOF_ACCEL_AXIS_SAMPLED) == true) {
        sl_sleeptimer_stop_timer(&sample_timer);
    }
}

bool ei_accel_sample_start(sampler_callback callsampler, float sample_interval_ms)
{
    EiDeviceInfo* dev = EiDeviceInfo::get_device();
    sl_status_t ret;
    inertial_cb_sampler = callsampler;

    ret = sl_sleeptimer_start_periodic_timer_ms(&sample_timer,
                                          dev->get_sample_interval_ms(),
                                          sample_timer_callback,
                                          0,
                                          0,
                                          SL_SLEEPTIMER_NO_HIGH_PRECISION_HF_CLOCKS_REQUIRED_FLAG);
    if (ret != SL_STATUS_OK) {
        ei_printf("ERR: Failed to start sample timer (0x%04lx)\n", ret);
        return false;
    }

    return true;
}

bool ei_accel_setup_data_sampling(void)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceInfo::get_device());
    EiDeviceMemory *mem = dev->get_memory();

    if (dev->get_sample_interval_ms() < 10.0f ) {
        dev->set_sample_interval_ms(10.0f);
    }

    // Calculate number of bytes available on flash for sampling, reserve 1 block for header + overhead
    uint32_t available_bytes = (mem->get_available_sample_blocks() - 1) * mem->block_size;

    // Check available sample size before sampling for the selected frequency
    uint32_t requested_bytes = ceil((dev->get_sample_length_ms() / dev->get_sample_interval_ms()) * SIZEOF_ACCEL_AXIS_SAMPLED * 2);
    if(requested_bytes > available_bytes) {
        ei_printf("ERR: Sample length is too long. Maximum allowed is %ims at %.1fHz.\r\n", 
            (int)floor(available_bytes / ((SIZEOF_ACCEL_AXIS_SAMPLED * 2) / dev->get_sample_interval_ms())),
            (1000 / dev->get_sample_interval_ms()));
        return false;
    }

    sensor_aq_payload_info payload = {
        // Unique device ID (optional), set this to e.g. MAC address or device EUI **if** your device has one
        dev->get_device_id().c_str(),
        // Device type (required), use the same device type for similar devices
        dev->get_device_type().c_str(),
        // How often new data is sampled in ms. (100Hz = every 10 ms.)
        dev->get_sample_interval_ms(),
        // The axes which you'll use. The units field needs to comply to SenML units (see https://www.iana.org/assignments/senml/senml.xhtml)
        { { "accX", "m/s2" }, { "accY", "m/s2" }, { "accZ", "m/s2" }, },
    };

    ei_sampler_start_sampling(&payload, &ei_accel_sample_start, SIZEOF_ACCEL_AXIS_SAMPLED);

    return true;
}

float *ei_fusion_inertial_read_data(int n_samples)
{
    if(sl_imu_is_data_ready()) {
        sl_imu_update();
        sl_imu_get_acceleration_raw_data(&imu_data[0]);
        imu_data[0] *= CONVERT_G_TO_MS2;
        imu_data[1] *= CONVERT_G_TO_MS2;
        imu_data[2] *= CONVERT_G_TO_MS2;

        if (n_samples > 3) {
            sl_imu_get_gyro_raw_data(&imu_data[3]);
        }
        else {
            imu_data[3] = 0.0f;
            imu_data[4] = 0.0f;
            imu_data[5] = 0.0f;
        }
    }
    else {
        ei_printf("ERR: no IMU data!\n");
        imu_data[0] = 0.0f;
        imu_data[1] = 0.0f;
        imu_data[2] = 0.0f;
        imu_data[3] = 0.0f;
        imu_data[4] = 0.0f;
        imu_data[5] = 0.0f;
    }

    return imu_data;
}
