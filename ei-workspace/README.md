# Edge Impulse firmware for SiLabs Thunderboard Sense 2

[Edge Impulse](https://www.edgeimpulse.com) enables developers to create the next generation of intelligent device solutions with embedded Machine Learning. This repository contains the Edge Impulse firmware for the Silicon Labs Thunderboard Sense 2 development board. This device supports all Edge Impulse device features, including ingestion, remote management and inferencing.

> **Note:** Do you just want to use this development board with Edge Impulse? No need to build this firmware. See the instructions [here](https://docs.edgeimpulse.com/docs/silabs-thunderboard-sense-2) for a prebuilt image and instructions. Or, you can use the [data forwarder](https://docs.edgeimpulse.com/docs/cli-data-forwarder) to capture data from any sensor.

## Requirements

### Hardware

* [SiLabs Thunderboard Sense 2](https://www.silabs.com/development-tools/thunderboard/thunderboard-sense-two-kit) development board.

### Software

* Python 3.6.8 or higher.
* Java 64 bit JVM 11 or higher:
    - available at [Amazon Correto](https://docs.aws.amazon.com/corretto/latest/corretto-11-ug/downloads-list.html) or [releases page](https://github.com/corretto/corretto-11/releases).
* [Simplicity Studio 5](https://www.silabs.com/developers/simplicity-studio).
  * Gecko SDK v3
  * Bluetooth SDK v3

alternatively you can build this application with Docker (see below).

## Building the application

Firstly, clone this repository if you haven't done so already.

```
$ git clone https://github.com/edgeimpulse/firmware-silabs-thunderboard-sense-2
```

Then below are 3 ways you can build (and flash) this application:

1. Building (and flashing) this project (command-line)
1. Building (and flashing) this project (Docker)
1. Using Simplicity Studio

### Building (and flashing) this project (command-line)

#### Building the firmware

You'll need to have Simplicity Studio 5 installed and configured. Then you can run:

**macOS**

```
$ ./build.sh --build /Applications/Simplicity\ Studio.app/Contents/Eclipse/
```

**Linux**

```
$ ./build.sh --build /path/to/SimplicityStudio_v5
```

Replace `/path/to/SimplicityStudio_v5` with the path of your Simplicity Studio 5 installation.

The default is to build with **Gecko SDK v3.2.x** and **10.2_2020q4** GNU
Toolchain. However if you would like to build with Gecko SDK v3.1.x and
7.2_2019q4 GNU toolchain then that is achieved as follows:

```
$ GECKO_SDK_VERSION=3.1 GNU_TOOLCHAIN_VERSION=7.2_2017q4 ./build.sh --build /path/to/SimplicityStudio_v5
```

> Note: If your installation path is `/opt/SimplicityStudio_v5` then this argument can be ommited as follows.
>
>```
>$ ./build.sh --build
>```

This will generate and build **a new project** in `ei-workspace/` using Silicon Lab Configurator
(SLC) CLI.

> WARNING:
> `./build.sh --build` will generate a new project. As as result, `ei-workspace/` will be cleared if it exists prior
> to building with `./build.sh --build`.

#### Flashing the firmware

You can either drag `./ei-workspace/build/debug/firmware-silabs-thunderboard-sense-2.bin` to the `TB004` mass-storage device (mounts as a USB flash drive), or flash with the JLink tools via:

```
$ ./build.sh --flash
```

### Building (and flashing) this project (Docker)

#### Building the firmware

1. Build the container:

    ```
    $ docker build -t thunderboard-sense-2-build .
    ```

1. Build the application:

    ```
    $ docker run --rm -u $UID -v $PWD:/app:delegated thunderboard-sense-2-build /bin/bash build.sh --build
    ```

#### Flashing the firmware

You can either drag `./ei-workspace/build/debug/firmware-silabs-thunderboard-sense-2.bin` to the `TB004` mass-storage device (mounts as a USB flash drive), or flash with the JLink tools via:

```
$ ./build.sh --flash
```


### Using Simplicity Studio
#### Importing the firmware in Simplicity Studio

1.  Open Simplicity IDE and install the Gecko SDK 3.2.x
1.  Start the wizard via **File>New>Silicon Labs Project Wizard...**
1.  In the New Project Wizard select **Simplicity Studio>Silicon Labs MCU Project** and click **Next**
1.  Select the Board, **Thunderboard Sense 2**.
1.  Select the correct SDK you installed in #1 and click **Next**

<p align="center">
    <img src="images/target-sdk-toolchain-selection.png" height="500">
</p>

1.  Select **Empty C++ Program** and click **Next**

<p align="center">
    <img src="images/example-project-selection.png" height="500">
</p>

1.  Name the project `firmware-silabs-thunderboard-sense-2` and make sure **Copy contents** is selected before clicking **Finish**

<p align="center">
    <img src="images/project-configuration.png" height="500">
</p>

1.  Then select in the Studio select all files and folders (except for **Includes**) and **Delete** them.
1.  Then (if you haven't already done so) generate a project using the Silicon Lab Configurator (SLC) tool and `firmware-silabs-thunderboard-sense-2.slcp`.
    Run:

    ```
    $ ./build.sh --build  /path/to/SimplicityStudio_v5
    ```
    This will create (and build) the project in `ei-workspace`.
1.  In your OS, navigate to `ei-workspace/` and drag-and-drop all the files and folder in this folder (slcp, sources…) into your new project in the Project Explorer window in Simplicity Studio.
1. When prompted select **Copy files and folders** for this operation.
1. Then **Project > Close Project** followed by a **Project > Open Project**.
1. Click on `firmware-silabs-thunderboard-sense-2.slcp` file to show the Simplicity Configurator.
1. Under the **Overview>Project Details**** section click **Force Generate**. This will generate any needed files and substitute the imported SDK files with links to files in the SDK used by studio.

<p align="center">
    <img src="images/project-details.png" height="500">
</p>

1. Finally right click on your project and select **Build Project**.

#### Building and flashing the firmware

1. In Simplicity Studio v5, select **Project > Build Project** to build the firmware.
1. Then, right click on the development board in the *Debug adapters* section of Simplicity Studio and select **Upload application**.

    ![](images/upload_application.png)

1. Under *Application image path* select the `GNU ARM v10.2.1 - Default/firmware-silabs-thunderboard-sense-2.bin` file and click **OK** to flash.

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

<p align="center">
    <img src="images/IMG_3F7D69D91929-1.jpeg" height="500">
</p>

> **Note:** Only classification results greater than 0.80 are transmitted.
