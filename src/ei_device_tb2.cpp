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

#include <cstdlib>
#include <cstdio>
#include <cstdint>
#include "ei_device_tb2.h"
#include "em_system.h"
extern "C" {
#include "rgbled_brd4166.h"
};
#include "flash_memory.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include "ei_microphone.h"
#include "ei_inertial_sensor.h"

#define RGB_LED_MASK        0x0F           // Use all LEDs
#define EI_LED_BLUE         rgb_led_set_rgb(RGB_LED_MASK, 58>>2, 180>>2, 205>>2)
#define EI_LED_GREEN        rgb_led_set_rgb(RGB_LED_MASK, 164>>2, 198>>2, 9>>2)
#define EI_LED_YELLOW       rgb_led_set_rgb(RGB_LED_MASK, 255>>2, 187>>2, 5>>2)
#define EI_LED_RED          rgb_led_set_rgb(RGB_LED_MASK, 255>>2, 67>>2, 26>>2)
#define EI_LED_OFF          rgb_led_set_rgb(RGB_LED_MASK, 0, 0, 0)

using namespace std;

static void on_sample_timer(sl_sleeptimer_timer_handle_t *handle, void *data)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(data);
    dev->sample_read_callback();
}

static void on_led_timer(sl_sleeptimer_timer_handle_t *handle, void *data)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(data);
    static uint8_t animation = 0;
    static uint8_t blink = 0;

    blink ^= 0x01;

    switch(dev->get_state())
    {
        case eiStateErasingFlash:
            if(blink) {
                EI_LED_RED;
            }
            else {
                EI_LED_OFF;
            }
            break;
        case eiStateSampling:
            if(blink) {
                EI_LED_BLUE;
            }
            else {
                EI_LED_OFF;
            }
            break;
        case eiStateUploading:
            if(blink) {
                EI_LED_GREEN;
            }
            else {
                EI_LED_OFF;
            }
            break;
        case eiStateFinished:
            if(animation == 0) {
                animation = 10;
            }
            break;
        default:
            break;
    }

    if(animation == 0) {
        return;
    }

    switch(animation) {
        case 10:
            EI_LED_OFF;
            break;
        case 9:
            EI_LED_BLUE;
            break;
        case 8:
            EI_LED_GREEN;
            break;
        case 7:
            EI_LED_RED;
            break;
        case 6:
            EI_LED_BLUE;
            break;
        case 5:
            EI_LED_GREEN;
            break;
        case 4:
            EI_LED_RED;
            break;
        case 3:
            EI_LED_BLUE;
            break;
        case 2:
            EI_LED_GREEN;
            break;
        case 1:
            dev->set_state(eiStateIdle);
            break;
    }
    animation--;
}

EiDeviceTB2::EiDeviceTB2(EiDeviceMemory* mem)
{
    EiDeviceInfo::memory = mem;

    init_device_id();

    load_config();

    rgb_led_init();

    device_type = "SILABS_TB_SENSE2";

    camera_present = false;

    standalone_sensor_list[0].name = "Microphone";
    standalone_sensor_list[0].frequencies[0] = 16000.0f;
    standalone_sensor_list[0].start_sampling_cb = &ei_microphone_sample_start;
    standalone_sensor_list[0].max_sample_length_s = mem->get_available_sample_bytes() / (16000 * sizeof(microphone_sample_t));
}

EiDeviceTB2::~EiDeviceTB2()
{

}

string EiDeviceTB2::get_mac_address(void)
{
    return mac_address;
}

bool EiDeviceTB2::is_camera_present(void)
{
    return camera_present;
}

void EiDeviceTB2::init_device_id(void)
{
    uint64_t id;
    char temp[18];

    id = SYSTEM_GetUnique();

    snprintf(temp, 18, "%02x:%02x:%02x:%02x:%02x:%02x",
            (uint8_t)(id>>56),
            (uint8_t)(id>>48),
            (uint8_t)(id>>40),
            (uint8_t)(id>>16),
            (uint8_t)(id>>8),
            (uint8_t)(id));

    device_id = string(temp);
    mac_address = string(temp);
}

/**
 * @brief get_device is a static method of EiDeviceInfo class
 * It is used to implement singleton paradigm, so we are returning
 * here pointer always to the same object (dev)
 * 
 * @return EiDeviceInfo* 
 */
EiDeviceInfo* EiDeviceInfo::get_device(void)
{
    static EiFlashMemory memory(sizeof(EiConfig));
    static EiDeviceTB2 dev(&memory);

    return &dev;
}

void EiDeviceTB2::clear_config(void)
{
    EiDeviceInfo::clear_config();

    init_device_id();
    save_config();
}

bool EiDeviceTB2::start_sample_thread(void (*sample_read_cb)(void), float sample_interval_ms)
{
    sl_status_t ret;

    this->sample_read_callback = sample_read_cb;
    ret = sl_sleeptimer_start_periodic_timer_ms(&this->sample_timer,
                                          sample_interval_ms,
                                          on_sample_timer,
                                          this,
                                          0,
                                          SL_SLEEPTIMER_NO_HIGH_PRECISION_HF_CLOCKS_REQUIRED_FLAG);

    return ret == SL_STATUS_OK;
}

bool EiDeviceTB2::stop_sample_thread(void)
{
    sl_status_t ret;

    ret = sl_sleeptimer_stop_timer(&this->sample_timer);

    return ret == SL_STATUS_OK;
}

void EiDeviceTB2::set_state(EiState state)
{
    this->state = state;

    EI_LED_OFF;

    switch(state) {
        case eiStateErasingFlash:
        case eiStateSampling:
        case eiStateUploading:
        case eiStateFinished:
            sl_sleeptimer_start_periodic_timer_ms(&this->led_timer,
                                                250,
                                                on_led_timer,
                                                this,
                                                0,
                                                SL_SLEEPTIMER_NO_HIGH_PRECISION_HF_CLOCKS_REQUIRED_FLAG);
            break;
        case eiStateIdle:
        default:
            sl_sleeptimer_stop_timer(&this->led_timer);
            EI_LED_OFF;
    }
}

EiState EiDeviceTB2::get_state(void)
{
    return this->state;
}

bool EiDeviceTB2::get_sensor_list(const ei_device_sensor_t **sensor_list, size_t *sensor_list_size)
{
    *sensor_list = this->standalone_sensor_list;
    *sensor_list_size = this->standalone_sensor_num;

    return true;
}

EiSnapshotProperties EiDeviceTB2::get_snapshot_list(void)
{
    ei_device_snapshot_resolutions_t *res;
    uint8_t res_num = 0;

    //TODO: move the getting of snapshot to camera device
    EiSnapshotProperties props = {
        .has_snapshot = false,
        .support_stream = false,
        .color_depth = "",
        .resolutions_num = 0,
        .resolutions = res
    };

    return props;
}

uint32_t EiDeviceTB2::get_data_output_baudrate(void)
{
    return 115200;
}