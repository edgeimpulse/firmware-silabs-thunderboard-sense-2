# Edge Impulse firmware for SiLabs Thunderboard Sense 2

[Edge Impulse](https://www.edgeimpulse.com) enables developers to create the next generation of intelligent device solutions with embedded Machine Learning. This repository contains the Edge Impulse firmware for the Silicon Labs Thunderboard Sense 2 development board. This device supports all Edge Impulse device features, including ingestion, remote management and inferencing.

> **Note:** Do you just want to use this development board with Edge Impulse? No need to build this firmware. See the instructions [here](https://docs.edgeimpulse.com/docs/silabs-thunderboard-sense-2) for a prebuilt image and instructions. Or, you can use the [data forwarder](https://docs.edgeimpulse.com/docs/cli-data-forwarder) to capture data from any sensor.

## Requirements

### Hardware

* [SiLabs Thunderboard Sense 2](https://www.silabs.com/development-tools/thunderboard/thunderboard-sense-two-kit) development board.

### Software

Either:

* [Simplicity Studio 5](https://www.silabs.com/developers/simplicity-studio) to build with an IDE. You'll also need:
    * Python 3.6.8 or higher.
    * Java 64 bit JVM 11 or higher:
        - available at [Amazon Correto](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html) or [releases page](https://github.com/corretto/corretto-11/releases).
* Or, [GNU Arm Embedded Toolchain 10](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) to build from the command line on Linux or macOS.
* Or, [Docker Desktop](https://www.docker.com/products/docker-desktop) to build using Docker.

## Building the application

First, clone or [download](https://github.com/edgeimpulse/firmware-silabs-thunderboard-sense-2/archive/refs/heads/master.zip) this repository:

```
$ git clone https://github.com/edgeimpulse/firmware-silabs-thunderboard-sense-2
```

Then, follow the build instructions for your environment below.

## Building using Simplicity Studio 5

### Importing the project

1.  Open Simplicity IDE and install the Gecko SDK 3.2.x.
1.  Create a new project via **File > New > Silicon Labs Project Wizard...**
1.  In the New Project Wizard select **Simplicity Studio > Silicon Labs MCU Project** and click **Next**
1.  Under 'board' select **Thunderboard Sense 2**.
1.  Select the correct SDK you installed in #1 and click **Next**.

    ![Toolchain and SDK selection](images/target-sdk-toolchain-selection.png)

1.  Select **Empty C++ Program** and click **Next**.

    ![Empty C++ Program](images/example-project-selection.png)

1.  Name the project `firmware-silabs-thunderboard-sense-2` (exactly this) and make sure **Copy contents** is selected before clicking **Finish**.

    ![Project configuration](images/project-configuration.png)

1. Under 'Project Explorer' select all files, except for *Includes* and delete them:

    ![Delete all files](images/delete-files.png)

1. Then, navigate to the `firmware-silabs-thunderboard-sense-2/ei-workspace` folder (in this repository), and drag all files and folders into the 'Project explorer' window in Simplicity Studio.
1. When prompted select **Copy files and folders** for this operation.
1. Then close, and reopen the project via: **Project > Close Project**, then **Project > Open Project**.
1. Double-click on `firmware-silabs-thunderboard-sense-2.slcp` to show the Simplicity Configurator.
1. Edit 'Project Generators' and disable 'IARM EMBEDDED WORKBENCH PROJECT':

    ![Disable IAR](images/no-iar.png)

1. Click **Force Generation** to regenerate all links and include paths.

    ![Force generation](images/project-details.png)

1. You can now build your project, by right-clicking on the project name in the 'Project explorer' and choosing **Build Project**.
1. 🚀

### Building and flashing the firmware

1. In Simplicity Studio v5, select **Project > Build Project** to build the firmware.
1. Then, right click on the development board in the *Debug adapters* section of Simplicity Studio and select **Upload application**.

    ![](images/upload_application.png)

1. Under *Application image path* select the `GNU ARM v10.2.1 - Default/firmware-silabs-thunderboard-sense-2.bin` file and click **OK** to flash.

## Building from the command line

Building from the command line is only supported on macOS and Linux.

### Building the firmware

1. Set the `ARM_GCC_DIR` environment variable to a place where you've installed the GNU Arm Embedded Toolchain 10:

    ```
    $ export ARM_GCC_DIR=~/toolchains/gcc-arm-none-eabi-10-2020-q4-major/
    ```

1. Build the application:

    ```
    ./build.sh --build
    ```

### Flashing the firmware

You can either drag `./ei-workspace/build/debug/firmware-silabs-thunderboard-sense-2.bin` to the `TB004` mass-storage device (mounts as a USB flash drive), or flash with the JLink tools via:

```
$ ./build.sh --flash
```

## Building with Docker

### Building the firmware

1. Build the container:

    ```
    $ docker build -t thunderboard-sense-2-build .
    ```

1. Build the application:

    **macOS, Linux**

    ```
    $ docker run --rm -u $UID -v $PWD:/app:delegated thunderboard-sense-2-build /bin/bash build.sh --build
    ```

    **Windows**

    ```
    $ docker run --rm -v "%cd%":/app:delegated thunderboard-sense-2-build /bin/bash build.sh --build
    ```

#### Flashing the firmware

You can either drag `./ei-workspace/build/debug/firmware-silabs-thunderboard-sense-2.bin` to the `TB004` mass-storage device (mounts as a USB flash drive), or flash with the JLink tools via:

```
$ ./build.sh --flash
```

## Streaming results over BLE to your phone

Want to stream the results of your impulse over BLE to your phone? No problem! To do so:

1. Open a BLE scanner on your phone (tested with LightBlue on iOS) and :
    * Connect to the **Edge Impulse** device.
    * Subscribe to the `2A56` characteristic.
    * Decode the message as UTF8 (click on `HEX` in the top right corner in LightBlue to switch).
1. Start classification via:

    ```
    $ edge-impulse-run-impulse
    ```

1. You now see the classification results on your phone!

    ![Classification results](images/IMG_3F7D69D91929-1.jpeg)

> **Note:** Only classification results greater than `0.80` or anomaly scores greater than `1.0` are transmitted.

## Updating the workspace

When building from command-line or Docker, and files have been added/removed from the workspace then it may be required to re-generate/update the workspace.
To do so, run the following command.

```
$ docker build -t thunderboard-sense-2-build .
$ docker run --rm -u $UID -v $PWD:/app:delegated thunderboard-sense-2-build /bin/bash build.sh --update
```

This will update `.slcp` and makefiles accordingly
