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

#include "flash_memory.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"

uint32_t EiFlashMemory::read_data(uint8_t *data, uint32_t address, uint32_t num_bytes)
{
    if(address + num_bytes > this->memory_size) {
        num_bytes = this->memory_size - address;
    }

    MX25_READ(address, data, num_bytes);

    return num_bytes;
}

uint32_t EiFlashMemory::write_data(const uint8_t *data, uint32_t address, uint32_t num_bytes)
{
    uint32_t offset = 0;
    uint32_t n_bytes = 0;
    uint32_t bytes_to_write = num_bytes;

    do {
        if(bytes_to_write > Page_Offset) {
            n_bytes = Page_Offset;
            bytes_to_write -= Page_Offset;
        }
        else {
            n_bytes = bytes_to_write;
            bytes_to_write = 0;
        }

        /* If write overflows page, split up in 2 writes */
        if((((address+offset) & 0x000000ff) + n_bytes) > Page_Offset) {
            int diff = Page_Offset - ((address+offset) & 0xFF);
            MX25_PP(address + offset, ((uint8_t *)data + offset), diff);
            /* Update index pointers */
            n_bytes -= diff;
            offset += diff;

            bytes_to_write += n_bytes;
        }
        else {
            MX25_PP(address + offset, ((uint8_t *)data + offset), n_bytes);
            offset += n_bytes;
        }
    } while(bytes_to_write);

    return num_bytes;
}

uint32_t EiFlashMemory::erase_data(uint32_t address, uint32_t num_bytes)
{
    /**
     * Address can point to the middle of sector, but num_bytes may be reaching
     *  part of the last sector
     * +-------+-------+-------+-------+
     * |       |       |       |       |
     * +-------+-------+-------+-------+
     *     ^
     *     address
     *     <-----num_bytes--------->
     */
    uint32_t first_block_offset = address & 0x00000fff;
    uint32_t bytes_to_erase = num_bytes + first_block_offset;
    int num_blocks = bytes_to_erase < this->block_size ? 1 : ceil(float(bytes_to_erase) / this->block_size);

    // we dont need to care about address align, as the MX25 chip controller is
    // ignoring 12 lower bits
    for(int i=0; i<num_blocks; i++) {
        MX25_SE(address + i * this->block_size);
    }

    return num_bytes;
}

EiFlashMemory::EiFlashMemory(uint32_t config_size):
    EiDeviceMemory(config_size, tSE / 1000000, FlashSize, Sector_Offset)
{
    uint32_t id = 0;
    uint16_t rems = 0;
    uint8_t res = 0;
    FlashStatus stat;

    MX25_init();

    MX25_RDID(&id);
    if(id != 0xc22816) {
        ei_printf("ERR: Incorrect Flash ID: 0x%lx\n", id);
    }

    MX25_RES(&res);
    if(res != 0x16) {
        ei_printf("ERR: Incorrect Flash Electronic Signature: 0x%02x\n", res);
    }

    MX25_REMS(&rems, &stat);
    if(rems != 0xc216) {
        ei_printf("ERR: Incorrect Flash Mfg & Dev ID: 0x%04x\n", rems);
    }
}
