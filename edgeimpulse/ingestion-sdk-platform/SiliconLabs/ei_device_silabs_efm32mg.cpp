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
#include "ei_device_silabs_efm32mg.h"
#include "ei_silabs_fs_commands.h"
#include "retargetserial.h"
#include "ei_microphone.h"
#include "ei_inertialsensor.h"
#include "repl.h"
#include "efr32mg12p332f1024gl125.h"

#include <cstdarg>
#include "math.h"

extern "C" void UTIL_delay(uint32_t ms);
extern "C" int64_t UTIL_getTick(void);
extern "C" void BOARD_rgbledSetColor(uint8_t red, uint8_t green, uint8_t blue);
extern "C" void USART_Tx(USART_TypeDef *usart, uint8_t data);

extern "C" void ei_led_state_control(void);
extern "C" int periodic_ble_handle(void);

/* Constants --------------------------------------------------------------- */
#define EI_LED_BLUE     BOARD_rgbledSetColor(58>>2, 180>>2, 205>>2)
#define EI_LED_GREEN    BOARD_rgbledSetColor(164>>2, 198>>2, 9>>2)
#define EI_LED_YELLOW   BOARD_rgbledSetColor(255>>2, 187>>2, 5>>2)
#define EI_LED_RED      BOARD_rgbledSetColor(255>>2, 67>>2, 26>>2)
#define EI_LED_OFF      BOARD_rgbledSetColor(0, 0, 0)


/** Max size for device id array */
#define DEVICE_ID_MAX_SIZE  32

/** Sensors */
typedef enum
{
    ACCELEROMETER = 0,
    MICROPHONE

}used_sensors_t;

#define EDGE_STRINGIZE_(x) #x
#define EDGE_STRINGIZE(x) EDGE_STRINGIZE_(x)

/** Device type */
static const char *ei_device_type = "SILABS_TB_SENSE2";//EDGE_STRINGIZE(TARGET_NAME);

/** Device id array */
static char ei_device_id[DEVICE_ID_MAX_SIZE];

/** Device object, for this class only 1 object should exist */
EiDeviceEfm32Mg EiDevice;

static tEiState ei_program_state = eiStateIdle;

/* Private function declarations ------------------------------------------- */
static int get_id_c(uint8_t out_buffer[32], size_t *out_size);
static int get_type_c(uint8_t out_buffer[32], size_t *out_size);
static bool get_wifi_connection_status_c(void);
static bool get_wifi_present_status_c(void);
static bool read_sample_buffer(size_t begin, size_t length, void(*data_fn)(uint8_t*, size_t));

/* Public functions -------------------------------------------------------- */

EiDeviceEfm32Mg::EiDeviceEfm32Mg(void)
{
    uint32_t *id_msb = (uint32_t *)&DEVINFO->EUI48H;
    uint32_t *id_lsb = (uint32_t *)&DEVINFO->EUI48L;

    /* Setup device ID */
    snprintf(&ei_device_id[0], DEVICE_ID_MAX_SIZE, "%02X:%02X:%02X:%02X:%02X:%02X"
        ,(unsigned int)((*id_msb >> 8) & 0xFF)
        ,(unsigned int)((*id_msb >> 0) & 0xFF)
        ,(unsigned int)((*id_lsb >> 24)& 0xFF)
        ,(unsigned int)((*id_lsb >> 16)& 0xFF)
        ,(unsigned int)((*id_lsb >> 8) & 0xFF)
        ,(unsigned int)((*id_lsb >> 0) & 0xFF)
        );
}

/**
 * @brief      For the device ID, the BLE mac address is used.
 *             The mac address string is copied to the out_buffer.
 *
 * @param      out_buffer  Destination array for id string
 * @param      out_size    Length of id string
 *
 * @return     0
 */
int EiDeviceEfm32Mg::get_id(uint8_t out_buffer[32], size_t *out_size)
{
    return get_id_c(out_buffer, out_size);
}

/**
 * @brief      Gets the identifier pointer.
 *
 * @return     The identifier pointer.
 */
const char *EiDeviceEfm32Mg::get_id_pointer(void)
{
    return (const char *)ei_device_id;
}

/**
 * @brief      Copy device type in out_buffer & update out_size
 *
 * @param      out_buffer  Destination array for device type string
 * @param      out_size    Length of string
 *
 * @return     -1 if device type string exceeds out_buffer
 */
int EiDeviceEfm32Mg::get_type(uint8_t out_buffer[32], size_t *out_size)
{
    return get_type_c(out_buffer, out_size);
}

/**
 * @brief      Gets the type pointer.
 *
 * @return     The type pointer.
 */
const char *EiDeviceEfm32Mg::get_type_pointer(void)
{
    return (const char *)ei_device_type;
}

/**
 * @brief      No Wifi available for device.
 *
 * @return     Always return false
 */
bool EiDeviceEfm32Mg::get_wifi_connection_status(void)
{
    return false;
}

/**
 * @brief      No Wifi available for device.
 *
 * @return     Always return false
 */
bool EiDeviceEfm32Mg::get_wifi_present_status(void)
{
    return false;
}

/**
 * @brief      Create sensor list with sensor specs
 *             The studio and daemon require this list
 * @param      sensor_list       Place pointer to sensor list
 * @param      sensor_list_size  Write number of sensors here
 *
 * @return     False if all went ok
 */
bool EiDeviceEfm32Mg::get_sensor_list(const ei_device_sensor_t **sensor_list, size_t *sensor_list_size)
{
    /* Calculate number of bytes available on flash for sampling, reserve 1 block for header + overhead */
    uint32_t available_bytes = (ei_silabs_fs_get_n_available_sample_blocks()-1) * ei_silabs_fs_get_block_size();

    sensors[ACCELEROMETER].name = "Built-in accelerometer";
    sensors[ACCELEROMETER].start_sampling_cb = &ei_inertial_setup_data_sampling;
    sensors[ACCELEROMETER].max_sample_length_s = available_bytes / (100 * SIZEOF_N_AXIS_SAMPLED);
    sensors[ACCELEROMETER].frequencies[0] = 62.5f;
    sensors[ACCELEROMETER].frequencies[1] = 100.0f;

    sensors[MICROPHONE].name = "Built-in microphone";
    sensors[MICROPHONE].start_sampling_cb = &ei_microphone_sample_start;
    sensors[MICROPHONE].max_sample_length_s = available_bytes / (16000 * 2);
    sensors[MICROPHONE].frequencies[0] = 16000.0f;

    *sensor_list      = sensors;
    *sensor_list_size = EI_DEVICE_N_SENSORS;

    return false;
}

/**
 * @brief      Device specific delay ms implementation
 *
 * @param[in]  milliseconds  The milliseconds
 */
void EiDeviceEfm32Mg::delay_ms(uint32_t milliseconds)
{
    UTIL_delay(milliseconds);
}

uint64_t EiDeviceEfm32Mg::get_ms(void)
{
    return UTIL_getTick();
}

void EiDeviceEfm32Mg::set_state(tEiState state)
{
    ei_program_state = state;

    if(state == eiStateFinished) {
        EI_LED_OFF;
        delay_ms(300);
        EI_LED_BLUE;
        delay_ms(300);
        EI_LED_GREEN;
        delay_ms(300);
        EI_LED_YELLOW;
        delay_ms(300);
        EI_LED_RED;
        delay_ms(300);
        EI_LED_OFF;

        ei_program_state = eiStateIdle;
    }
}

/**
 * @brief      Call BLE functions if classifier is waiting
 *
 * @return     Start or stop classification over BLE
 */
int EiDeviceEfm32Mg::idle_wait(void)
{
    int start_stop = 0;

#if USE_BLE_CLASSIFICATION == 1

    start_stop = periodic_ble_handle();

    if(start_stop) {
        ei_printf("Start: %d\r\n", start_stop);
    }
#endif

    return start_stop;
}

/**
 * @brief      Get a C callback for the get_id method
 *
 * @return     Pointer to c get function
 */
c_callback EiDeviceEfm32Mg::get_id_function(void)
{
    return &get_id_c;
}

/**
 * @brief      Get a C callback for the get_type method
 *
 * @return     Pointer to c get function
 */
c_callback EiDeviceEfm32Mg::get_type_function(void)
{
    return &get_type_c;
}

/**
 * @brief      Get a C callback for the get_wifi_connection_status method
 *
 * @return     Pointer to c get function
 */
c_callback_status EiDeviceEfm32Mg::get_wifi_connection_status_function(void)
{
    return &get_wifi_connection_status_c;
}

/**
 * @brief      Get a C callback for the wifi present method
 *
 * @return     The wifi present status function.
 */
c_callback_status EiDeviceEfm32Mg::get_wifi_present_status_function(void)
{
    return &get_wifi_present_status_c;
}

/**
 * @brief      Get a C callback to the read sample buffer function
 *
 * @return     The read sample buffer function.
 */
c_callback_read_sample_buffer EiDeviceEfm32Mg::get_read_sample_buffer_function(void)
{
    return &read_sample_buffer;
}

/**
 * @brief      Write serial data with length to Serial output
 *
 * @param      data    The data
 * @param[in]  length  The length
 */
void ei_write_string(char *data, int length)
{
    for( int i = 0; i < length; i++) {
        USART_Tx(RETARGET_UART, *(data++));
    }
}


void ei_printfloat(int n_decimals, int n, ...)
{
    int i;
    double val;

    char buffer[32];

    sprintf(buffer, "%%.%df", n_decimals);

    va_list vl;
    va_start(vl,n);
    for (i=0;i<n;i++){
        val=va_arg(vl,double);
        ei_printf(buffer, val);
    }
    va_end(vl);
}

void ei_printf_float(float f)
{
    float n = f;

    static double PRECISION = 0.00001;
    static int MAX_NUMBER_STRING_SIZE = 32;

    char s[MAX_NUMBER_STRING_SIZE];

    if (n == 0.0) {
        ei_printf("0.00000");
    }
    else {
        int digit, m;//, m1;
        char *c = s;
        int neg = (n < 0);
        if (neg) {
            n = -n;
        }
        // calculate magnitude
        m = log10(n);
        if (neg) {
            *(c++) = '-';
        }
        if (m < 1.0) {
            m = 0;
        }
        // convert the number
        while (n > PRECISION || m >= 0) {
            double weight = pow(10.0, m);
            if (weight > 0 && !isinf(weight)) {
                digit = floor(n / weight);
                n -= (digit * weight);
                *(c++) = '0' + digit;
            }
            if (m == 0 && n > 0) {
                *(c++) = '.';
            }
            m--;
        }
        *(c) = '\0';
        ei_write_string(s, c - s);
    }
}

/**
 * @brief      Get characters for uart pheripheral and send to repl
 */
void ei_command_line_handle(void)
{
    char data = RETARGET_ReadChar();

    while(data != 0xFF) {
        rx_callback(data);
        data = RETARGET_ReadChar();
    }
}

bool ei_user_invoke_stop(void)
{
    bool stop_found = false;
    char data = RETARGET_ReadChar();

    while(data != 0xFF) {
        if(data == 'b') {
            stop_found = true;
            break;
        }
        data = RETARGET_ReadChar();
    }

    return stop_found;
}

/**
 * @brief      Check if new serial data is available
 *
 * @return     Returns number of available bytes
 */
int ei_get_serial_available(void) {
    return 0;//Serial.available();
}

/**
 * @brief      Get next available byte
 *
 * @return     byte
 */
char ei_get_serial_byte(void) {
    return 0;//Serial.read();
}

/* Private functions ------------------------------------------------------- */

static int get_id_c(uint8_t out_buffer[32], size_t *out_size)
{
    size_t length = strlen(ei_device_id);

    if(length < 32) {
        memcpy(out_buffer, ei_device_id, length);

        *out_size = length;
        return 0;
    }

    else {
        *out_size = 0;
        return -1;
    }
}

static int get_type_c(uint8_t out_buffer[32], size_t *out_size)
{
    size_t length = strlen(ei_device_type);

    if(length < 32) {
        memcpy(out_buffer, ei_device_type, length);

        *out_size = length;
        return 0;
    }

    else {
        *out_size = 0;
        return -1;
    }
}

static bool get_wifi_connection_status_c(void)
{
    return false;
}

static bool get_wifi_present_status_c(void)
{
    return false;
}

/**
 * @brief      Read samples from sample memory and send to data_fn function
 *
 * @param[in]  begin    Start address
 * @param[in]  length   Length of samples in bytes
 * @param[in]  data_fn  Callback function for sample data
 *
 * @return     false on flash read function
 */
static bool read_sample_buffer(size_t begin, size_t length, void(*data_fn)(uint8_t*, size_t))
{
    size_t pos = begin;
    size_t bytes_left = length;
    bool retVal;

    EiDevice.set_state(eiStateUploading);

    // we're encoding as base64 in AT+READFILE, so this needs to be divisable by 3
    uint8_t buffer[513];
    while (1) {
        size_t bytes_to_read = sizeof(buffer);
        if (bytes_to_read > bytes_left) {
            bytes_to_read = bytes_left;
        }
        if (bytes_to_read == 0) {
            retVal = true;
            break;
        }

        int r = ei_silabs_fs_read_sample_data(buffer, pos, bytes_to_read);
        if (r != 0) {
            retVal = false;
            break;

        }
        data_fn(buffer, bytes_to_read);

        pos += bytes_to_read;
        bytes_left -= bytes_to_read;
    }

    EiDevice.set_state(eiStateFinished);

    return retVal;
}

void ei_led_state_control(void)
{
    static char toggle = 0;


    if(toggle) {
        switch(ei_program_state)
        {
            case eiStateErasingFlash:   EI_LED_BLUE;    break;
            case eiStateSampling:       EI_LED_YELLOW;  break;
            case eiStateUploading:      EI_LED_RED;     break;
            default: break;
        }
    }
    else {
        if(ei_program_state != eiStateFinished) {
            EI_LED_OFF;
        }
    }
    toggle ^= 1;
}
