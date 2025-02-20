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

#include "flash_memory.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"
#include <cmath>

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
