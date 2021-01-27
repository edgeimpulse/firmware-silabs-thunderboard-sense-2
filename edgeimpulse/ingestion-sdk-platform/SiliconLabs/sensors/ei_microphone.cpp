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
#include "ei_microphone.h"
#include "ei_device_silabs_efm32mg.h"
#include "ei_silabs_fs_commands.h"

#include "ei_config_types.h"
#include "sensor_aq_mbedtls_hs256.h"
#include "sensor_aq_none.h"
#include "edge-impulse-sdk/CMSIS/DSP/Include/arm_math.h"

/** Extern C function references ------------------------------------------- */
extern "C" {
    uint32_t MIC_init(uint32_t fs, uint16_t *sampleBuffer, size_t len);
    void MIC_deInit(void);
    void MIC_start(uint32_t nsamples);
    int MIC_isBusy(void);
}

/** AUDIO sample config ---------------------------------------------------- */
#define AUDIO_SAMPLING_FREQUENCY            16000
#define AUDIO_BUFFER_SIZE                   1600

int16_t audio_dma_buffer[AUDIO_BUFFER_SIZE << 1];

/** Status and control struct for inferencing struct */
typedef struct {
    int16_t *buffers[2];
    uint8_t buf_select;
    uint8_t buf_ready;
    uint32_t buf_count;
    uint32_t n_samples;
} inference_t;

/* Extern declared --------------------------------------------------------- */
extern ei_config_t *ei_config_get_config();

static size_t ei_write(const void*, size_t size, size_t count, EI_SENSOR_AQ_STREAM*)
{    
    return count;
}

static int ei_seek(EI_SENSOR_AQ_STREAM*, long int offset, int origin)
{    
    return 0;
}

/* Private variables ------------------------------------------------------- */
static bool record_ready = false;
static uint32_t headerOffset;
static uint32_t samples_required;
static uint32_t current_sample;

static inference_t inference;

static unsigned char ei_mic_ctx_buffer[1024];
static sensor_aq_signing_ctx_t ei_mic_signing_ctx = {0};
static sensor_aq_mbedtls_hs256_ctx_t ei_mic_hs_ctx = {0};
static sensor_aq_ctx ei_mic_ctx = {
    { ei_mic_ctx_buffer, 1024 },
    &ei_mic_signing_ctx,
    &ei_write,
    &ei_seek,
    NULL,
};


/* Private functions ------------------------------------------------------- */

/**
 * @brief      Ingestion audio callback, write audio samples to memory
 *             Signal record_ready when all needed samples are there
 * @param      buffer   Pointer to source buffer
 * @param[in]  n_bytes  Number of bytes to write
 */
static void audio_buffer_callback(void *buffer, uint32_t n_bytes)
{    
    ei_silabs_fs_write_samples((const void *)buffer, headerOffset + current_sample, n_bytes);

    ei_mic_ctx.signature_ctx->update(ei_mic_ctx.signature_ctx, (uint8_t*)buffer, n_bytes);

    current_sample += n_bytes;
    if(current_sample >= (samples_required << 1)) {
        record_ready = false;
    }
}

/**
 * @brief      Inference audio callback, store samples in ram buffer
 *             Signal when buffer is full, and swap buffers
 * @param      buffer   Pointer to source buffer
 * @param[in]  n_bytes  Number of bytes to write
 */
static void audio_buffer_inference_callback(void *buffer, uint32_t n_bytes)
{
    int16_t *samples = (int16_t *)buffer;

    for(uint32_t i = 0; i < n_bytes>>1; i++) {
        inference.buffers[inference.buf_select][inference.buf_count++] = samples[i];

        if(inference.buf_count >= inference.n_samples) {
            inference.buf_select ^= 1;
            inference.buf_count = 0;
            inference.buf_ready = 1;
        }
    }
}

/**
 * @brief      Check DSP semaphores, when ready get sample buffer that belongs
 *             to the semaphore.
 * @param[in]  callback  Callback needs to handle the audio samples
 */
static void get_dsp_data(void (*callback)(void *buffer, uint32_t n_bytes))
{    
    int bufSelect;

    do {
        bufSelect = MIC_isBusy();
    
    } while(!bufSelect);
    
    int offset = bufSelect == 1 ? 0 : AUDIO_BUFFER_SIZE;

    callback((void *)&audio_dma_buffer[offset], AUDIO_BUFFER_SIZE * 2);
}


static void finish_and_upload(char *filename, uint32_t sample_length_ms) {    

    ei_printf("Done sampling, total bytes collected: %u\n", current_sample);


    ei_printf("[1/1] Uploading file to Edge Impulse...\n");

    ei_printf("Not uploading file, not connected to WiFi. Used buffer, from=%lu, to=%lu.\n", 0, current_sample + headerOffset);


    ei_printf("[1/1] Uploading file to Edge Impulse OK (took %d ms.)\n", 200);//upload_timer.read_ms());

    ei_printf("OK\n");

    EiDevice.set_state(eiStateIdle);    
}

static int insert_ref(char *buffer, int hdrLength)
{
    #define EXTRA_BYTES(a)  ((a & 0x3) ? 4 - (a & 0x3) : (a & 0x03))
    const char *ref = "Ref-BINARY-i16";
    int addLength = 0;
    int padding = EXTRA_BYTES(hdrLength);

    buffer[addLength++] = 0x60 + 14 + padding;
    for(uint32_t i = 0; i < strlen(ref); i++) {
        buffer[addLength++] = *(ref + i);
    }
    for(int i = 0; i < padding; i++) {
        buffer[addLength++] = ' ';
    }

    buffer[addLength++] = 0xFF;

    return addLength;
}

static bool create_header(void)
{
    sensor_aq_init_mbedtls_hs256_context(&ei_mic_signing_ctx, &ei_mic_hs_ctx, ei_config_get_config()->sample_hmac_key);

    sensor_aq_payload_info payload = {
        EiDevice.get_id_pointer(),
        EiDevice.get_type_pointer(),
        1000.0f / static_cast<float>(AUDIO_SAMPLING_FREQUENCY),
        { { "audio", "wav" } }
    };

    int tr = sensor_aq_init(&ei_mic_ctx, &payload, NULL, true);

    if (tr != AQ_OK) {
        ei_printf("sensor_aq_init failed (%d)\n", tr);
        return false;
    }

    // then we're gonna find the last byte that is not 0x00 in the CBOR buffer.
    // That should give us the whole header
    size_t end_of_header_ix = 0;
    for (size_t ix = ei_mic_ctx.cbor_buffer.len - 1; ix >= 0; ix--) {
        if (((uint8_t*)ei_mic_ctx.cbor_buffer.ptr)[ix] != 0x0) {
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
    tr = ei_mic_ctx.signature_ctx->update(ei_mic_ctx.signature_ctx, ((uint8_t*)ei_mic_ctx.cbor_buffer.ptr + end_of_header_ix), ref_size);
    if (tr != 0) {
        ei_printf("Failed to update signature from header (%d)\n", tr);
        return false;
    }

    end_of_header_ix += ref_size;

    // Write to blockdevice
    tr = ei_silabs_fs_write_samples(ei_mic_ctx.cbor_buffer.ptr, 0, end_of_header_ix);

    if (tr != 0) {
        ei_printf("Failed to write to header blockdevice (%d)\n", tr);
        return false;
    }

    headerOffset = end_of_header_ix;

    return true;
}


/* Public functions -------------------------------------------------------- */

void ei_microphone_init(void)
{

}

bool ei_microphone_record(uint32_t sample_length_ms, uint32_t start_delay_ms, bool print_start_messages)
{

    EiDevice.set_state(eiStateErasingFlash);

    if (print_start_messages) {
        ei_printf("Starting in %lu ms... (or until all flash was erased)\n", start_delay_ms < 2000 ? 2000 : start_delay_ms);
    }

    if(start_delay_ms < 2000) {
        EiDevice.delay_ms(2000 - start_delay_ms);
    }

    if(ei_silabs_fs_erase_sampledata(0, (samples_required << 1) + ei_silabs_fs_get_block_size()) != SILABS_FS_CMD_OK) {
        return false;
    }

    create_header();


    if (print_start_messages) {
        ei_printf("Sampling...\n");
    }

    MIC_deInit();
    MIC_init(AUDIO_SAMPLING_FREQUENCY,(uint16_t *)audio_dma_buffer, AUDIO_BUFFER_SIZE);
    MIC_start(AUDIO_BUFFER_SIZE);

    return true;
}

bool ei_microphone_inference_start(uint32_t n_samples)
{

    inference.buffers[0] = (int16_t *)malloc(n_samples * sizeof(int16_t));

    if(inference.buffers[0] == NULL) {
        return false;
    }

    inference.buffers[1] = (int16_t *)malloc(n_samples * sizeof(int16_t));

    if(inference.buffers[0] == NULL) {
        free(inference.buffers[0]);
        return false;
    }

    inference.buf_select = 0;
    inference.buf_count  = 0;
    inference.n_samples  = n_samples;
    inference.buf_ready  = 0;

    record_ready = true;

    MIC_deInit();
    MIC_init(AUDIO_SAMPLING_FREQUENCY,(uint16_t *)audio_dma_buffer, AUDIO_BUFFER_SIZE);
    MIC_start(n_samples);

    return true;

}

bool ei_microphone_inference_record(void)
{
    bool ret = true;

    if (inference.buf_ready == 1) {
        ei_printf(
            "Error sample buffer overrun. Decrease the number of slices per model window "
            "(EI_CLASSIFIER_SLICES_PER_MODEL_WINDOW)\n");
        ret = false;
    }

    while(inference.buf_ready == 0) {
        get_dsp_data(&audio_buffer_inference_callback);
    };

    inference.buf_ready = 0;

    return ret;
}

/**
 * @brief      Reset buffer counters for non-continuous inferecing
 */
void ei_microphone_inference_reset_buffers(void)
{
    inference.buf_ready = 0;
    inference.buf_count = 0;
    MIC_start(AUDIO_BUFFER_SIZE);
}

/**
 * Get raw audio signal data
 */
int ei_microphone_audio_signal_get_data(size_t offset, size_t length, float *out_ptr)
{
    arm_q15_to_float(&inference.buffers[inference.buf_select ^ 1][offset], out_ptr, length);

    return 0;
}


bool ei_microphone_inference_end(void)
{
    free(inference.buffers[0]);
    free(inference.buffers[1]);
    return true;
}

/**
 * Sample raw data
 */
bool ei_microphone_sample_start(void)
{
    // this sensor does not have settable interval...
    // ei_config_set_sample_interval(static_cast<float>(1000) / static_cast<float>(AUDIO_SAMPLING_FREQUENCY));
    //int sample_length_blocks;

    ei_printf("Sampling settings:\n");
    ei_printf("\tInterval: "); (ei_printf_float((float)ei_config_get_config()->sample_interval_ms));ei_printf(" ms.\n");
    ei_printf("\tLength: %lu ms.\n", ei_config_get_config()->sample_length_ms);
    ei_printf("\tName: %s\n", ei_config_get_config()->sample_label);
    ei_printf("\tHMAC Key: %s\n", ei_config_get_config()->sample_hmac_key);
    char filename[256];
    int fn_r = snprintf(filename, 256, "/fs/%s", ei_config_get_config()->sample_label);
    if (fn_r <= 0) {
        ei_printf("ERR: Failed to allocate file name\n");
        return false;
    }
    ei_printf("\tFile name: %s\n", filename);


    samples_required = (uint32_t)(((float)ei_config_get_config()->sample_length_ms) / ei_config_get_config()->sample_interval_ms);

    /* Round to even number of samples for word align flash write */
    if(samples_required & 1) {
        samples_required++;
    }

    current_sample = 0;

    bool r = ei_microphone_record(ei_config_get_config()->sample_length_ms, (((samples_required <<1)/ ei_silabs_fs_get_block_size()) * SILABS_FS_BLOCK_ERASE_TIME_MS), true);
    if (!r) {
        return r;
    }
    record_ready = true;
    EiDevice.set_state(eiStateSampling);

    while(record_ready == true) {
        get_dsp_data(audio_buffer_callback);
    };


    int ctx_err = ei_mic_ctx.signature_ctx->finish(ei_mic_ctx.signature_ctx, ei_mic_ctx.hash_buffer.buffer);
    if (ctx_err != 0) {
        ei_printf("Failed to finish signature (%d)\n", ctx_err);
        return false;
    }

    // load the first page in flash...
    uint8_t *page_buffer = (uint8_t*)malloc(ei_silabs_fs_get_block_size());
    if (!page_buffer) {
        ei_printf("Failed to allocate a page buffer to write the hash\n");
        return false;
    }

    int j = ei_silabs_fs_read_sample_data(page_buffer, 0, ei_silabs_fs_get_block_size());
    if (j != 0) {
        ei_printf("Failed to read first page (%d)\n", j);
        free(page_buffer);
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

    j = ei_silabs_fs_erase_sampledata(0, ei_silabs_fs_get_block_size());
    if (j != 0) {
        ei_printf("Failed to erase first page (%d)\n", j);
        free(page_buffer);
        return false;
    }

    j = ei_silabs_fs_write_samples(page_buffer, 0, ei_silabs_fs_get_block_size());

    free(page_buffer);

    if (j != 0) {
        ei_printf("Failed to write first page with updated hash (%d)\n", j);
        return false;
    }


    finish_and_upload(filename, ei_config_get_config()->sample_length_ms);

    return true;
}
