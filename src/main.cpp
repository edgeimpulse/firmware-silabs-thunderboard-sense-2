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

#include <cstdio>
#include "ble.h"
#include "sl_stdio.h"
#include "sl_component_catalog.h"
#include "sl_system_init.h"
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
#include "sl_power_manager.h"
#endif
#if defined(SL_CATALOG_KERNEL_PRESENT)
#include "sl_system_kernel.h"
#else // SL_CATALOG_KERNEL_PRESENT
#include "sl_system_process_action.h"
#endif // SL_CATALOG_KERNEL_PRESENT
#include "ei_at_handlers.h"
#include "ei_device_tb2.h"
#include "inference/ei_run_impulse.h"
#include "ei_inertial_sensor.h"
#include "ei_hall_sensor.h"
#include "edge-impulse-sdk/porting/ei_classifier_porting.h"


int main(void)
{
  EiDeviceTB2* dev = static_cast<EiDeviceTB2*>(EiDeviceInfo::get_device());
  char c;
  ATServer *at;

  // Initialize Silicon Labs device, system, service(s) and protocol stack(s).
  // Note that if the kernel is present, processing task(s) will be created by
  // this call.
  sl_system_init();
  
  ei_hall_sensor_init();
  ei_inertial_init();

  dev->set_state(eiStateFinished);

  // Init AT Server and print initial prompt
  at = ei_at_init(dev);
  ei_printf("Type AT+HELP to see a list of commands.\r\n");
  at->print_prompt();

  ble_init();

  while (1) {
    sl_system_process_action();

    if(sl_getchar(&c) == SL_STATUS_OK) {
      if(is_inference_running() && c == 'b') {
        ei_stop_impulse();
        at->print_prompt();
        continue;
      }

      at->handle(c);
    }

    if(is_inference_running() == true) {
      ei_run_impulse();
    }
  
#if defined(SL_CATALOG_POWER_MANAGER_PRESENT)
    // Let the CPU go to sleep if the system allows it.
    sl_power_manager_sleep();
#endif
  }
}
