/* Edge Impulse ingestion SDK
 * Copyright (c) 2020 EdgeImpulse Inc.
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

/* Include ----------------------------------------------------------------- */
#include <stdint.h>
#include <stdlib.h>

#include "ei_config_types.h"
#include "ei_inertialsensor.h"
#include "ei_device_silabs_efm32mg.h"
#include "ei_classifier_porting.h"
#include "sensor_aq.h"
#include "sl_imu.h"


/* Extern functions -------------------------------------------------------- */
extern "C" {
}

/* Constant defines -------------------------------------------------------- */
#define CONVERT_G_TO_MS2    9.80665f

extern ei_config_t *ei_config_get_config();
extern EI_CONFIG_ERROR ei_config_set_sample_interval(float interval);

/* Private function prototypes --------------------------------------------- */


/* Private variables ------------------------------------------------------- */
static uint32_t samplerate_divider;
static float imu_data[N_AXIS_SAMPLED];

sampler_callback  cb_sampler;


/**
 * @brief      Setup SPI config and accelerometer convert value
 *
 * @return     false if communinication error occured
 */
bool ei_inertial_init(void)
{
    bool initState;

    initState = sl_imu_init();

    if (initState == false) {
        sl_imu_configure(100.f);
    }

    return !initState;
}

/**
 * @brief      Get data from sensor, convert and call callback to handle
 */
void ei_inertial_read_data(void)
{       
    uint32_t start = ei_read_timer_ms();
    float sSample[3];
    volatile uint32_t div_sample_count;
    
    sl_imu_get_acceleration_raw_data(sSample);

    imu_data[0] = sSample[0] * CONVERT_G_TO_MS2;
    imu_data[1] = sSample[1] * CONVERT_G_TO_MS2;
    imu_data[2] = sSample[2] * CONVERT_G_TO_MS2;

    cb_sampler((const void *)&imu_data[0], SIZEOF_N_AXIS_SAMPLED);

    int remaining = (ei_config_get_config()->sample_interval_ms)-(ei_read_timer_ms()-start);
    if (remaining > 0) { ei_sleep(remaining); } // delay for remaning sample time
}

/**
 * @brief      Setup timing and data handle callback function
 *
 * @param[in]  callsampler         Function to handle the sampled data
 * @param[in]  sample_interval_ms  The sample interval milliseconds
 *
 * @return     true
 */
bool ei_inertial_sample_start(sampler_callback callsampler, float sample_interval_ms)
{
    cb_sampler = callsampler;

    EiDevice.set_state(eiStateSampling);

    return true;
}

/**
 * @brief      Setup payload header
 *
 * @return     true
 */
bool ei_inertial_setup_data_sampling(void)
{

    if (ei_config_get_config()->sample_interval_ms < 0.001f) {
        ei_config_set_sample_interval(1.f/62.5f);
    }

    sensor_aq_payload_info payload = {
        // Unique device ID (optional), set this to e.g. MAC address or device EUI **if** your device has one
        EiDevice.get_id_pointer(),
        // Device type (required), use the same device type for similar devices
        EiDevice.get_type_pointer(),
        // How often new data is sampled in ms. (100Hz = every 10 ms.)
        ei_config_get_config()->sample_interval_ms,
        // The axes which you'll use. The units field needs to comply to SenML units (see https://www.iana.org/assignments/senml/senml.xhtml)
        { { "accX", "m/s2" }, { "accY", "m/s2" }, { "accZ", "m/s2" }, 
        /*{ "gyrX", "dps" }, { "gyrY", "dps" }, { "gyrZ", "dps" } */},        
    };	
    
    EiDevice.set_state(eiStateErasingFlash);
    ei_sampler_start_sampling(&payload, SIZEOF_N_AXIS_SAMPLED);
    EiDevice.set_state(eiStateIdle);

    return true;
}

/* Static functions -------------------------------------------------------- */
