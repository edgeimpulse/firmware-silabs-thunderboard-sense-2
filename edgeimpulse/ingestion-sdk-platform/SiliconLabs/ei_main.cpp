//ei_main.cpp


#include <stdio.h>

#include "ei_device_silabs_efm32mg.h"
#include "ei_silabs_fs_commands.h"
#include "ei_classifier_porting.h"
#include "ei_main.h"
#include "ei_run_impulse.h"
#include "../../repl/at_cmds.h"

#include "ei_inertialsensor.h"
#include "ei_microphone.h"


/* Extern declared C functions --------------------------------------------- */


void ei_init(void)
{
    ei_printf("Hello from Edge Impulse Device SDK.\r\n"
              "Compiled on %s %s\r\n", __DATE__, __TIME__);

    /* Setup the inertial sensor */
    if(ei_inertial_init() == false) {
        ei_printf("Inerial sensor communication error occured\r\n");
    }

    ei_microphone_init();

    /* Intialize configuration */
    static ei_config_ctx_t config_ctx = { 0 };
    config_ctx.get_device_id = EiDevice.get_id_function();
    config_ctx.get_device_type = EiDevice.get_type_function();
    config_ctx.wifi_connection_status = EiDevice.get_wifi_connection_status_function();
    config_ctx.wifi_present = EiDevice.get_wifi_present_status_function();
    config_ctx.load_config = &ei_silabs_fs_load_config;
    config_ctx.save_config = &ei_silabs_fs_save_config;
    config_ctx.list_files = NULL;
    config_ctx.read_buffer = EiDevice.get_read_sample_buffer_function();


    EI_CONFIG_ERROR cr = ei_config_init(&config_ctx);

    if (cr != EI_CONFIG_OK) {
        ei_printf("Failed to initialize configuration (%d)\n", cr);
    }
    else {
        ei_printf("Loaded configuration\n");
    }

    /* Setup the command line commands */
    ei_at_register_generic_cmds();
    ei_at_cmd_register("RUNIMPULSE", "Run the impulse", run_nn_normal);
    //ei_at_cmd_register("RUNIMPULSEDEBUG", "Run the impulse with extra debug output", run_nn_debug);
    ei_at_cmd_register("RUNIMPULSECONT", "Run the impulse continuously", run_nn_continuous_normal);
    ei_printf("Type AT+HELP to see a list of commands.\r\n> ");

    EiDevice.set_state(eiStateFinished);

    run_nn_continuous_normal();
}

void ei_main(void)
{

	ei_command_line_handle();

    if(EiDevice.idle_wait()) {
        run_nn_normal();
    }
}