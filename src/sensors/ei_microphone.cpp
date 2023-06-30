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

#include "ei_microphone.h"
#include "ei_device_tb2.h"
#include "firmware-sdk/sensor_aq.h"
#include "sensor_aq_mbedtls/sensor_aq_mbedtls_hs256.h"
#include "edge-impulse-sdk/CMSIS/DSP/Include/dsp/support_functions.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include "sl_mic.h"
#include "sl_status.h"

//TODO: use multiply of memory block size
#define MIC_SAMPLE_SIZE 2048

/** Status and control struct for inferencing struct */
typedef struct {
    int16_t *buffers[2];
    uint8_t buf_select;
    uint8_t buf_ready;
    uint32_t buf_count;
    uint32_t n_samples;
} inference_t;

static size_t ei_write(const void *buffer, size_t size, size_t count, EI_SENSOR_AQ_STREAM *);
static int ei_seek(EI_SENSOR_AQ_STREAM *, long int offset, int origin);

static inference_t inference;
static uint32_t required_samples_size;
static uint32_t headerOffset = 0;
microphone_sample_t *sample_buffer;
microphone_sample_t *sample_buffer_processed;
static uint32_t current_sample;

static unsigned char ei_mic_ctx_buffer[1024];
static sensor_aq_signing_ctx_t ei_mic_signing_ctx;
static sensor_aq_mbedtls_hs256_ctx_t ei_mic_hs_ctx;
static sensor_aq_ctx ei_mic_ctx = {
    { ei_mic_ctx_buffer, 1024 },
    &ei_mic_signing_ctx,
    &ei_write,
    &ei_seek,
    NULL,
};

/* Dummy functions for sensor_aq_ctx type */
static size_t ei_write(const void*, size_t size, size_t count, EI_SENSOR_AQ_STREAM*)
{
    return count;
}

static int ei_seek(EI_SENSOR_AQ_STREAM*, long int offset, int origin)
{
    return 0;
}

static int insert_ref(char *buffer, int hdrLength)
{
    #define EXTRA_BYTES(a)  ((a & 0x3) ? 4 - (a & 0x3) : (a & 0x03))
    const char *ref = "Ref-BINARY-i16";
    int addLength = 0;
    int padding = EXTRA_BYTES(hdrLength);

    buffer[addLength++] = 0x60 + 14 + padding;
    for(unsigned int i = 0; i < strlen(ref); i++) {
        buffer[addLength++] = *(ref + i);
    }
    for(int i = 0; i < padding; i++) {
        buffer[addLength++] = ' ';
    }

    buffer[addLength++] = 0xFF;

    return addLength;
}

static bool create_header(sensor_aq_payload_info *payload)
{
    int ret;
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceTB2::get_device());
    EiDeviceMemory* mem = dev->get_memory();
    sensor_aq_init_mbedtls_hs256_context(&ei_mic_signing_ctx, &ei_mic_hs_ctx, dev->get_sample_hmac_key().c_str());

    ret = sensor_aq_init(&ei_mic_ctx, payload, NULL, true);

    if (ret != AQ_OK) {
        ei_printf("sensor_aq_init failed (%d)\n", ret);
        return false;
    }

    // then we're gonna find the last byte that is not 0x00 in the CBOR buffer.
    // That should give us the whole header
    size_t end_of_header_ix = 0;
    for (size_t ix = ei_mic_ctx.cbor_buffer.len - 1; ix != 0; ix--) {
        if (((uint8_t *)ei_mic_ctx.cbor_buffer.ptr)[ix] != 0x0) {
            end_of_header_ix = ix;
            break;
        }
    }

    if (end_of_header_ix == 0) {
        ei_printf("Failed to find end of header\n");
        return false;
    }

    int ref_size = insert_ref(((char*)ei_mic_ctx.cbor_buffer.ptr + end_of_header_ix), end_of_header_ix);
    // and update the signature
    ret = ei_mic_ctx.signature_ctx->update(ei_mic_ctx.signature_ctx, (uint8_t*)(ei_mic_ctx.cbor_buffer.ptr + end_of_header_ix), ref_size);
    if (ret != 0) {
        ei_printf("Failed to update signature from header (%d)\n", ret);
        return false;
    }
    end_of_header_ix += ref_size;

    // Write to blockdevice
    ret = mem->write_sample_data((uint8_t*)ei_mic_ctx.cbor_buffer.ptr, 0, end_of_header_ix);
    if ((size_t)ret != end_of_header_ix) {
        ei_printf("Failed to write to header blockdevice (%d)\n", ret);
        return false;
    }

    headerOffset = end_of_header_ix;

    return true;
}

static void ingestion_samples_callback(const int16_t *buffer, uint32_t sample_count)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceInfo::get_device());
    EiDeviceMemory* mem = dev->get_memory();

    if(sample_count > MIC_SAMPLE_SIZE) {
        ei_printf("ERR: too much data from microphone: %lu Discarding...\n", sample_count);
        return;
    }

    // apply gain to received data
    for(uint32_t i = 0; i < sample_count; i++) {
        sample_buffer_processed[i] = buffer[i] * 4;
    }

    // write raw data into memory
    mem->write_sample_data((uint8_t*)sample_buffer_processed, headerOffset + current_sample, sample_count * 2);

    // update data hash
    ei_mic_ctx.signature_ctx->update(ei_mic_ctx.signature_ctx, (uint8_t*)sample_buffer_processed, sample_count * 2);

    current_sample += (sample_count * 2);
}

bool ei_microphone_sample_start(void)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceInfo::get_device());
    EiDeviceMemory* mem = dev->get_memory();
    sl_status_t mic_status;
    uint8_t *page_buffer;
    int ret;
    uint32_t required_samples;

    sensor_aq_payload_info payload = {
        dev->get_device_id().c_str(),
        dev->get_device_type().c_str(),
        dev->get_sample_interval_ms(),
        { { "audio", "wav" } }
    };

    ei_printf("Sampling settings:\n");
    ei_printf("\tInterval: %.5f ms.\n", dev->get_sample_interval_ms());
    ei_printf("\tLength: %lu ms.\n", dev->get_sample_length_ms());
    ei_printf("\tName: %s\n", dev->get_sample_label().c_str());
    ei_printf("\tHMAC Key: %s\n", dev->get_sample_hmac_key().c_str());
    ei_printf("\tFile name: %s\n", dev->get_sample_label().c_str());

    required_samples = (uint32_t)((dev->get_sample_length_ms()) / dev->get_sample_interval_ms());

    /* Round to even number of samples for word align flash write */
    if(required_samples & 1) {
        required_samples++;
    }

    required_samples_size = required_samples * sizeof(microphone_sample_t);
    current_sample = 0;

    if(required_samples_size > mem->get_available_sample_bytes()) {
        ei_printf("ERR: Sample length is too long. Maximum allowed is %lu ms at 16000 Hz.\r\n", 
            ((mem->get_available_sample_bytes() / (16000 * sizeof(microphone_sample_t))) * 1000));
        return false;
    }

    dev->set_state(eiStateErasingFlash);

    // Minimum delay of 2000 ms for daemon
    uint32_t delay_time_ms = ((required_samples_size / mem->block_size) + 1) * mem->block_erase_time;
    ei_printf("Starting in %lu ms... (or until all flash was erased)\n", delay_time_ms < 2000 ? 2000 : delay_time_ms);

    if(mem->erase_sample_data(0, required_samples_size) != (required_samples_size)) {
        return false;
    }

    // if erasing took less than 2 seconds, wait additional time
    if(delay_time_ms < 2000) {
        ei_sleep(2000 - delay_time_ms);
    }

    // enable mic driver
    mic_status = sl_mic_init((uint32_t)(1000.0f / dev->get_sample_interval_ms()), 1);
    if(mic_status != SL_STATUS_OK) {
        ei_printf("Error microphone init: %04lx\n", mic_status);
        return false;
    }

    if (create_header(&payload) == false) {
        return false;
    }

    // double size because of double buffering
    sample_buffer = (microphone_sample_t*)ei_malloc(MIC_SAMPLE_SIZE * sizeof(microphone_sample_t) * 2);
    if(sample_buffer == nullptr) {
        ei_printf("ERR: Failed to allocate audio buffer\n");
        return false;
    }

    sample_buffer_processed = (microphone_sample_t*)ei_malloc(MIC_SAMPLE_SIZE * sizeof(microphone_sample_t));
    if(sample_buffer_processed == nullptr) {
        ei_printf("ERR: Failed to allocate audio buffer for processing\n");
        ei_free(sample_buffer);
        return false;
    }

    mic_status = sl_mic_start_streaming(sample_buffer, MIC_SAMPLE_SIZE, (sl_mic_buffer_ready_callback_t)ingestion_samples_callback);
    if(mic_status != SL_STATUS_OK) {
        ei_printf("Error microphone sampling: %04lx\n", mic_status);
        ei_free(sample_buffer);
        ei_free(sample_buffer_processed);
        return false;
    }

    ei_printf("Sampling...\n");

    dev->set_state(eiStateSampling);

    while (current_sample < required_samples_size) {
        ei_sleep(10);
    }

    sl_mic_deinit();

    ei_free(sample_buffer);
    ei_free(sample_buffer_processed);

    ret = ei_mic_ctx.signature_ctx->finish(ei_mic_ctx.signature_ctx, ei_mic_ctx.hash_buffer.buffer);
    if (ret != 0) {
        ei_printf("Failed to finish signature (%d)\n", ret);
        return false;
    }

    // load the first page in flash...
    page_buffer = (uint8_t*)ei_malloc(mem->block_size);
    if (!page_buffer) {
        ei_printf("Failed to allocate a page buffer to write the hash\n");
        return false;
    }

    ret = mem->read_sample_data(page_buffer, 0, mem->block_size);
    if ((uint32_t)ret != mem->block_size) {
        ei_printf("Failed to read first page (read %d, requersted %lu)\n", ret, mem->block_size);
        ei_free(page_buffer);
        return false;
    }

    // update the hash
    uint8_t *hash = ei_mic_ctx.hash_buffer.buffer;
    // we have allocated twice as much for this data (because we also want to be able to represent in hex)
    // thus only loop over the first half of the bytes as the signature_ctx has written to those
    for (size_t hash_ix = 0; hash_ix < ei_mic_ctx.hash_buffer.size / 2; hash_ix++) {
        // this might seem convoluted, but snprintf() with %02x is not always supported e.g. by newlib-nano
        // we encode as hex... first ASCII char encodes top 4 bytes
        uint8_t first = (hash[hash_ix] >> 4) & 0xf;
        // second encodes lower 4 bytes
        uint8_t second = hash[hash_ix] & 0xf;

        // if 0..9 -> '0' (48) + value, if >10, then use 'a' (97) - 10 + value
        char first_c = first >= 10 ? 87 + first : 48 + first;
        char second_c = second >= 10 ? 87 + second : 48 + second;

        page_buffer[ei_mic_ctx.signature_index + (hash_ix * 2) + 0] = first_c;
        page_buffer[ei_mic_ctx.signature_index + (hash_ix * 2) + 1] = second_c;
    }

    ret = mem->erase_sample_data(0, mem->block_size);
    if ((uint32_t)ret != mem->block_size) {
        ei_printf("Failed to erase first page (read %d, requested %lu)\n", ret, mem->block_size);
        ei_free(page_buffer);
        return false;
    }

    ret = mem->write_sample_data(page_buffer, 0, mem->block_size);
    ei_free(page_buffer);

    if ((uint32_t)ret != mem->block_size) {
        ei_printf("Failed to write first page with updated hash (read %d, requested %lu)\n", ret, mem->block_size);
        return false;
    }

    ei_printf("Done sampling, total bytes collected: %lu\n", required_samples_size);
    ei_printf("[1/1] Uploading file to Edge Impulse...\n");
    ei_printf("Not uploading file, not connected to WiFi. Used buffer, from=0, to=%lu.\n", required_samples_size + headerOffset);
    ei_printf("OK\n");

    return true;
}

static void inference_samples_callback(const int16_t *buffer, uint32_t sample_count)
{
    for(uint32_t i = 0; i < sample_count; i++) {
        // apply gain (*8) to samples
        inference.buffers[inference.buf_select][inference.buf_count++] = buffer[i] * 4;

        if(inference.buf_count >= inference.n_samples) {
            inference.buf_select ^= 1;
            inference.buf_count = 0;
            inference.buf_ready = 1;
        }
    }
}

int ei_microphone_inference_get_data(size_t offset, size_t length, float *out_ptr)
{
    arm_q15_to_float(&inference.buffers[inference.buf_select ^ 1][offset], out_ptr, length);
    inference.buf_ready = 0;

    return 0;  
}

bool ei_microphone_inference_start(uint32_t n_samples, float interval_ms)
{
    EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceInfo::get_device());

    inference.buffers[0] = (int16_t *)ei_malloc(n_samples * sizeof(microphone_sample_t));
    if(inference.buffers[0] == NULL) {
        return false;
    }

    inference.buffers[1] = (int16_t *)ei_malloc(n_samples * sizeof(microphone_sample_t));
    if(inference.buffers[1] == NULL) {
        ei_free(inference.buffers[0]);
        return false;
    }

    // double buffer because of double buffering
    sample_buffer = (microphone_sample_t*)ei_malloc(MIC_SAMPLE_SIZE * sizeof(microphone_sample_t) * 2);
    if(sample_buffer == nullptr) {
        ei_printf("ERR: Failed to allocate audio buffer\n");
        return false;
    }

    inference.buf_select = 0;
    inference.buf_count  = 0;
    inference.n_samples  = n_samples;
    inference.buf_ready  = 0;

    sl_mic_init((uint32_t)(1000.0f / dev->get_sample_interval_ms()), 1);
    sl_mic_start_streaming(sample_buffer, MIC_SAMPLE_SIZE, (sl_mic_buffer_ready_callback_t) inference_samples_callback);

    return true;
}

bool ei_microphone_inference_is_recording(void)
{
    return inference.buf_ready == 0;
}

void ei_microphone_inference_reset_buffers(void)
{
    inference.buf_ready = 0;
    inference.buf_count = 0;
}

bool ei_microphone_inference_end(void)
{
    sl_mic_deinit();

    ei_free(inference.buffers[0]);
    ei_free(inference.buffers[1]);
    ei_free(sample_buffer);

    return true;
}
