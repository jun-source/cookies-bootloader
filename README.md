#  Enabling secure boot and secure firmware upgrade for Cookies WSN boards

The main objective of this project is to enable for the first time secure boot along with secure firmware upgrade for Cookies WSN boards. The main SoC of those devices is *EFR32BG12P132F1024GL125* from Silicon Labs. The manufacturer provides with some examples already. Those examples are solutions that has been tested on real case scenarios. Besides, an example coming from the manufacturer is always a plus because it has been designed taking into consideration the hardware running beneath and it also gives more confidence about using some sensitive features like secure boot. With the need of commercial proven software and a time feasible solution, it has been decided that the best approach for the project is taking the solutions provided by the manufacturer and customize them based on our needs. This document will show you how to create the projects based on the provided examples and the adaptation that has to be made for Cookies' boards.

**Notes:**

- The following steps were **only** tested on Cookies' boards. In this document, they will be referred as the **target devices**. On the other hand, we will use the term **host device** to refer the machine used for development.
- All the modified projects are provided at *<root-project>/simplicity-studio-ws/examples*. In this document, we will explain the modifications made of the base examples provided by the manufacturer. But if you want to skip some of the steps, you can create  your project by importing those examples into your workspace through the GUI at *File/Import*.
  
  ![3](https://github.com/jun-source/cookies-bootloader/assets/122213795/8a28a916-8d35-4494-adbd-9760ae37f4bf)

## STEP 1: DOWNLOAD SIMPLICITY STUDIO AND SET UP YOUR HOST DEVICE

1. Follow the instructions given by *https://docs.silabs.com/simplicity-studio-5-users-guide/latest/ss-5-users-guide-getting-started/install-ss-5-and-software*.
2. Launch Simplicity Studio GUI by executing *SimplicityStudio_v5/studiowayland.sh*.
3. Connect your host device to the target device through a STK debugger. Don't forget to switch your debugger board to **AEM**.

![Cookies-stk](https://github.com/jun-source/cookies-bootloader/assets/122213795/417a46f1-a573-42a6-a4a2-077e3318579e)

4. Continue with the installation. A wizard will pop up listing the recommended tools and SDKs for the detected devices. If the target device is not detected automatically click on *Simplicty Studio -> Launcher -> Overview -> Board -> Detect Target Part* . If the GUI is not able to detect the device, you may install manually GSDK v4 (it contains the examples used in this project).
5. We recommend you to download CoolTerm for serial communication with the target device.
6. Close Simplicity Studio.
7. Clone this repository: *git clone git@github.com:jun-source/cookies-bootloader.git*

## STEP 2: RUN IOSTREAM_USART_BAREMETAL EXAMPLE ON YOUR TARGET DEVICE

It is recommended to run this example first. It will solve most of the USART communication issues between the host and the target due to USART has not been properly configured by the software. Furthermore, the bootloader used in this project will use USART for firmware upgrades. It will be easier to debug the UART configuration on *Platform - I/O Stream USART Bare-metal* example rather on the bootloader project.

1. Connect the target device to the host through the STK debugger.

2. *cd <root-project>/simplicity-studio-ws* and open Simplicity Studio by running *launch-simplicity.sh*.

3. Make sure that workspace is set to *<root-project>/simplicity-studio-ws* by selecting it on *File/Switch Workspace* on the GUI.

4. Click on *Detect Target Part* so that the GUI detects the connected devices.

![1](https://github.com/jun-source/cookies-bootloader/assets/122213795/d68c4942-9674-4782-bdad-b0c169ff6be3)

5. Create a new project based on *Platform - I/O Stream USART Bare-metal* example provided by the SDK. This example project uses the I/O Stream service running in a bare-metal configuration to demonstrate the use of USART communication over the virtual COM port (VCOM). The application will echo back any characters it receives over the serial connection. The VCOM serial port can be used either over USB or by connecting to port 4902 if the kit is connected via Ethernet.

![2](https://github.com/jun-source/cookies-bootloader/assets/122213795/cee84401-2691-400c-8fc0-f9ba5f924a8c)

6. You need to match USART pin definition in the project with the pinout of the target device. The configuration is done at *iostream_usart_baremetal/config/sl_iostream_usart_vcom_config.h*. In the case of Cookies, USART0 will be used for the communication between the host and the target device. RTS and CTS are disabled.  Add the following lines to the file:

   `//Cookies pinout`
    `#define SL_IOSTREAM_USART_VCOM_PERIPHERAL      USART0`
    #define SL_IOSTREAM_USART_VCOM_PERIPHERAL_NO   0

    #define SL_IOSTREAM_USART_VCOM_TX_PORT         gpioPortA
    #define SL_IOSTREAM_USART_VCOM_TX_PIN          0
    #define SL_IOSTREAM_USART_VCOM_TX_LOC          0

    #define SL_IOSTREAM_USART_VCOM_RX_PORT         gpioPortA
    #define SL_IOSTREAM_USART_VCOM_RX_PIN          1
    #define SL_IOSTREAM_USART_VCOM_RX_LOC          0

    #define SL_IOSTREAM_USART_VCOM_CTS_PORT        gpioPortA
    #define SL_IOSTREAM_USART_VCOM_CTS_PIN         2
    #define SL_IOSTREAM_USART_VCOM_CTS_LOC         0 // PA2 do not CTS

    #define SL_IOSTREAM_USART_VCOM_RTS_PORT        gpioPortA
    #define SL_IOSTREAM_USART_VCOM_RTS_PIN         3
    #define SL_IOSTREAM_USART_VCOM_RTS_LOC         0 // PA3 do not RTS`

![4](https://github.com/jun-source/cookies-bootloader/assets/122213795/0fbbf616-c5ec-4b39-8671-b050b48f74fb)

   Also, comment line 87: *#warning "IO Stream USART peripheral not configured"*, if you don't want this warning to appear when compiling. Lastly, you can find more information on EFR32BG12's datasheet and Cookie's schematic about the pinout.

7. Compile the project. The executables shall be found at *iostream_usart_baremetal/Binaries*. Then click on *Run* for downloading the firmware image to the target device.

![5](https://github.com/jun-source/cookies-bootloader/assets/122213795/cd471883-73c0-425d-a485-4d88440c30e7)

   You should get some logs on the console about the status of the operation.

![6](https://github.com/jun-source/cookies-bootloader/assets/122213795/df7386db-a29a-42f4-bd00-41f337b4bffa)

8. If the operation has been successful, disconnect the target device from the STK debugger. Then connect the target device to the host through the USB-C port available on the target device. Make sure to identify the port where the target device has been connected.

![7](https://github.com/jun-source/cookies-bootloader/assets/122213795/b313c001-a5f5-415d-9f2f-c14b3add09a0)

9. Verify that firmware has been downloaded and it works as expected. Launch CoolTerm and open a communication channel with the target device by selecting the serial port and setting the baud rate to 115200. If there is no response from the target device, you might need to toggle its reset button.

![8](https://github.com/jun-source/cookies-bootloader/assets/122213795/bf6c719a-f83e-4973-8c80-50eda4a68582)

Notes:

- You might need to unistall brltty. It seems like the CP210X USB-UART bridge used by the target device sometimes does not work well with brltty *https://forums.linuxmint.com/viewtopic.php?t=317567*.

## STEP 3: create and load a bootloader based on *Bootloader - NCP BGAOI UART DFU* example

The next step will be loading one of the bootloader examples provided by the manufacturer. In particular, *Bootloader - NCP BGAOI UART DFU* example. You will need to configure USART pinout definition for this project too. The generated bootloader will be flashed using Simplicity Commander. Simplicity Commander is a single, all-purpose tool to be used in a production environment. It is invoked using a simple Command Line Interface (CLI) that is also scriptable. Simplicity Commander enables customers to complete these essential tasks: flash their own applications, configure their own applications and create binaries for production.

 1. Connect the target device to the STK debugger.

 2. Open Simplicity Studio and create a new project based on *Bootloader - NCP BGAOI UART DFU* provided by the SDK. This is a standalone bootloader using the BGAPI protocol for UART DFU. This is the recommended UART bootloader for the BLE protocol stack.

![9](https://github.com/jun-source/cookies-bootloader/assets/122213795/7bb69dd2-76e5-4d6e-937b-49067433d1de)

 3. The folder *bootloader-uart-bgapi/config* contains some header files that might need to be modified by the user for enabling features of the bootloader.

![13](https://github.com/jun-source/cookies-bootloader/assets/122213795/a4cc7254-da3e-4a00-9365-9c76abd83ac9)

    For example, we are able enable secure boot at *bootloader-uart-bgapi/config/btl_core_cfg.h* by setting *#define BOOTLOADER_ENFORCE_SECURE_BOOT* macro to 1. On STEPS 5 and 6, we will create two bootloader projects based on *Bootloader - NCP BGAOI UART DFU* example with only secure boot activated, and with secure boot and secure DFU activated, respectively. 

    On STEP 3,  the current one, we will load a bootloader with no features enabled (default).

![14](https://github.com/jun-source/cookies-bootloader/assets/122213795/5faa2eab-6083-45a1-ab3a-bebb2abd98eb)

 4. Match USART0 pinout definition in the source code with target device's pinout by modifying *bootloader-uart-bgapi/config/btl_uart_driver_cfg.h* with the following lines.

    `//Cookies pinout`
     `#define SL_SERIAL_UART_PERIPHERAL      USART0`
     `#define SL_SERIAL_UART_PERIPHERAL_NO   0`

     `#define SL_SERIAL_UART_TX_PORT         gpioPortA`
     `#define SL_SERIAL_UART_TX_PIN          0`
     `#define SL_SERIAL_UART_TX_LOC          0`

     `#define SL_SERIAL_UART_RX_PORT         gpioPortA`
     `#define SL_SERIAL_UART_RX_PIN          1`
     `#define SL_SERIAL_UART_RX_LOC          0`

     `#define SL_SERIAL_UART_CTS_PORT        gpioPortA`
     `#define SL_SERIAL_UART_CTS_PIN         2`

     `#define SL_SERIAL_UART_RTS_PORT        gpioPortA`
     `#define SL_SERIAL_UART_RTS_PIN         3`

![10](https://github.com/jun-source/cookies-bootloader/assets/122213795/34fa9b1d-c6b5-45c6-a509-c79aee17b5ae)

 5. Generate the bootloader image by compiling the project. You can find the executables at *bootloader-uart-bgapi/artifact*. On Series 1 devices, three bootloader images are generated into the build directory: a main bootloader, a main bootloader with CRC32 checksum, and a combined first stage and main bootloader with CRC32 checksum. The main bootloader image is called *<project-name>.s37*, the main bootloader with CRC32 checksum is called *<projectname> crc.s37*, while the combined first stage image + main bootloader image with a CRC32 checksum is called *<projectname>-combined.s37*. The first time a device is programmed, whether during development or manufacturing, the combined image needs to be programmed. For subsequent programming, when a first stage bootloader is already present on the device, it is okay to download an image containing just the main bootloader. In this case, the main bootloader with CRC32 should be used. Assuming it is the first time the target device is loaded with a bootloader, we will use *<projectname>-combined.s37*.

![11](https://github.com/jun-source/cookies-bootloader/assets/122213795/7d7737af-7440-444b-b450-bd89b824cca9)

 6. Open a new terminal and go to *<root-project>/btl-fw-upgrade-ws*. This directory has been created for easing bootloader and firmware upgrade operations. You must `source set-env.sh` . This script will setup some environmental variables that will be needed by some other scripts.

 7. Go to *<root-project>/btl-fw-upgrade-ws/bootloader*. Bring the bootloader binaries you generated before by `cp -r ../../simplicity-studio-ws/bootloader-uart-bgapi/artifact/ images/bootloader-uart-bgapi`.

 8. Between all the bootloader binaries you must load *images/bootloader-uart-bgapi-combined.s37* (main booloader + first stage) by executing `bash load-bootloader.sh -e -f images/bootloader-uart-bgapi/bootloader-uart-bgapi-combined.s37`.

![12](https://github.com/jun-source/cookies-bootloader/assets/122213795/866a3172-0fc3-45af-8f4c-67acab0e8de2)

 9. If you open the Simplicty Commander tool, you will see that the positions of the flash reserved for the bootloader contain now some data, if the bootloader has been successfully loaded.

![15](https://github.com/jun-source/cookies-bootloader/assets/122213795/9e3cc8b3-8a93-4626-bce0-499d8da77bf5)

## STEP 4: perform and firmware upgrade using *bt_host_uart_dfu* example

*bt_host_uart_dfu example* is a C program provided by the manufacturer which is intended to be executed on the host and interacts with the bootloader that has been set previously into DFU mode for firmware upgrade operation. The firmware image used in this process must follow the GBL proprietary format of Silicon Labs.

   1. Disconnect the target device from the STK debugger and connect it through the USB C port to the host.

   2. We will use again *Platform - I/O Stream USART Bare-metal* example for creating the firmware image to be formatted in GBL. The formatting will be done using Simplicity Commander. However before that, it is necessary to add the *App Properties* bootloader component. The first step will be selecting the *iostream_usart_baremetal* project that we have created on STEP 3 and open the *iostream_usart_baremetal.sclp* file. Then, we go to the *SOFTWARE COMPONENTS* window, look for *App Propierties* software component and click on install.

![16](https://github.com/jun-source/cookies-bootloader/assets/122213795/6ba1dc2d-8b70-4c7d-9b99-aa70612f111c)

      If you build the project with the newly added component, you will probably get the following warning:

      `/home/$USER/projects/cookies-boot-dfu/simplicity-studio-ws/iostream_usart_baremetal/autogen/sl_application_type.h:34:10: fatal error: api/application_properties.h: No such file or directory`

      It seems like it is a bug known by the manufacturer, but it has not been fixed (https://community.silabs.com/s/question/0D58Y00008ZZjOASA1/app-properties-not-working-in-gsdk-402?language=en_US). As it is said on the forum, you need to create manually *iostream_usart_baremetal/gecko_sdk_4.3.2/platform/bootloader/api/application_properties.h*. Then copy the contents of */home/$USER/SimplicityStudio/SDKs/gecko_sdk/platform/bootloader/api/application_properties.h* from the SDK installation folder into the file. It seems like the IDE does not properly retrieve the needed files from the Simplicity Studio SDK installation folder.
      
      If you compile the project, you will get again the same error logs. You need to fix the relative paths of the includes. For example, one of files that falied is *iostream_usart_baremetal/autogen/sl_application_type.h*. Open that file and change *#include "api/application_properties.h"* to *#include "../gecko_sdk_4.3.2/platform/bootloader/api/application_properties.h"*.

![17](https://github.com/jun-source/cookies-bootloader/assets/122213795/53fd1e1f-fe36-43cb-a689-2e2c0c17a0aa)

      In other words, you need to fix the relative paths of the includes. There will probably be other files with the same issue, this time even from the Simplicity Studio SDK installation folder, you must fix them too. Once you have done it, there shall not be any more compiling issues.

   4. Open a terminal. Don't forget to *source <root-project>/btl-fw-upgrade-ws/set-env.sh*. Go to *<root-project>/btl-fw-upgrade-ws/firmware/images* . Then bring the firmware binary from *<root-project>/simplicity-studio-ws/iostream_usart_baremetal/GNU\ ARM\ v10.3.1\ -\ Default/iostream_usart_baremetal.out* .

   5. The next step will be creating the GBL files. You can either execute the correspondent CLI commands from Simplicity Commander on your own or you can use the script provided by the manufacturer *create_bl_files.sh* which is based those very same CLI commands. In this example, we will use the script which is already included in the cloned git repository at *<root-project>/btl-fw-upgrade-ws/firmware/images*.

   6. Running *create_bl_files.sh* creates multiple GBL files in a subfolder named **output_gbl**. The file named *full.gbl* is the upgrade image used for UART DFU. The other files are related to OTA upgrades and they can be ignored. If signing and/or encryption keys (named app-sign-key.pem, app-encrypt-key.txt) are present in the same directory, then the script also creates secure variants of the GBL files.

![18](https://github.com/jun-source/cookies-bootloader/assets/122213795/234649d7-01ce-4e56-bd4c-037114fd30ca)

   8.  The next step will be generating *bt_host_uart_dfu* host application. 

   9. `cd /home/$USER/SimplicityStudio/SDKs/gecko_sdk/app/bluetooth/example_host/bt_host_uart_dfu` and build the application by executing `make`. Copy the executable from */home/$USER/SimplicityStudio/SDKs/gecko_sdk/app/bluetooth/example_host/bt_host_uart_dfu/exe/bt_host_uart_dfu* to  *<root-project>/btl-fw-upgrade-ws/firmware*.

   10. Execute `bash fw-upgrade.sh -p images/output_gbl/full.gbl` to initialize the firmware upgrade.

   11. Click on the reset button of the target device to go into bootloader mode.
       
![19](https://github.com/jun-source/cookies-bootloader/assets/122213795/526f849d-41fc-4b05-bffe-52f477d86952)

   13. For double-check, open CoolTerm and make sure that the application is running. Don't forget to toggle the reset button if you see no messages.

## STEP 5: a bootloader with secure boot enabled that enforces signed firmware images

In this step, we will generate a bootloader based on *Bootloader - NCP BGAPI UART DFU* example with secure boot enabled. Every time,  the target device is turned on, the bootloader will verify and authenticate the firmware image through the attached digital signature. Therefore, we need to generate an asymmetric cryptographic keypair. The Gecko Bootloader supports the ECDSA-P256-SHA256 cryptographic signature algorithm.

1. Connect the target device to the STK debugger.

2. Just in case, delete any application stored previously. It is done my mass-erassing the main flash using Simplicity Commander. You can either do it through the command line or using the GUI. In STEP 5, we will show you how to do it through the GUI through *Tools -> Simplicity Commander*.

![20](https://github.com/jun-source/cookies-bootloader/assets/122213795/08a43a4a-ee12-4897-9a11-27d5b4895f79)

   Select the device on *Select Kit* option. Then go to *Flash* section and click on *Erase chip*.
   
![21](https://github.com/jun-source/cookies-bootloader/assets/122213795/75251423-b4e1-4e4f-bbb4-fa24db1e9262)

4. Create a new bootloader based on the *Bootloader - NCP BGAOI UART DFU* example and name it *bootloader-uart-bgapi-secureboot*. Just like on STEP 3, you need to set *bootloader-uart-bgapi-secureboot/config/btl_uart_driver_cfg.h* to match with the target device USART0 pinout.

5. The features needed for secure boot are already included in the project. You only need to activate it by modifying *bootloader-uart-bgapi-secureboot/config/btl_core_cfg.h*. More specifically, you need to set this macro *#define BOOTLOADER_ENFORCE_SECURE_BOOT* to 1.

![22](https://github.com/jun-source/cookies-bootloader/assets/122213795/def1d9d8-b5f3-4d87-932d-abb531525207)

7. Compile the project.

8. Open a new terminal and go to *<root-project>/btl-fw-upgrade-ws/bootloader*. Don't forget to source *set-env.sh* if you hadn't done before.

9. Copy *<root-project>/simplicity-studio-ws/bootloader-uart-bgapi-secureboot/artifact* folder and rename it as *<root-project>/btl-fw-upgrade-ws/bootloader/images/bootloader-uart-bgapi-secureboot*.

10. Load the bootloader to your target device by executing `bash load-bootloader.sh -p images/bootloader-uart-bgapi-secureboot/bootloader-uart-bgapi-secureboot-crc.s37`. Remember that in previous STEPS, we have already loaded the first stage bootloader. Therefore, we only need to update the main bootloader.

11. The next step will be generating the ECDSA key pair. Go to *<root-project>/btl-fw-upgrade-ws/keys* folder and execute `bash key-gen.sh -a -e`. "-a" option will create an AES-CTR-128 key and "-e" option generates ECDSA-P256. Even though, only signed firmware will be tested on STEP 5. We will generate beforehand the AES key for STEP 6.

![23](https://github.com/jun-source/cookies-bootloader/assets/122213795/c02b74fc-794d-4750-be45-8fa5d28788d5)

![24](https://github.com/jun-source/cookies-bootloader/assets/122213795/91f6de01-7041-49e8-b900-9cfa498f9e64)

   - *app-sign-key* contains the ECDSA private key in PEM format, and must be kept secret from third parties. This key will later be used to sign images and GBL files.

   - *app-sign-key.pub* contains the ECDSA public key in PEM format, and can be used to verify GBL files using *commander gbl parse*.

   - *app-sign-pubkey-tokens.txt* contains the ECDSA public key in token format, suitable for writing to the EFR32 device.

   - *app-encrypt-key* contains AES-128 key for encryption. The file has token format, making it suitable to write to the EFR32 device using *commander flash --tokenfile*.

11. We load ECDSA public key and the AES key by executing `bash key-gen.sh -f`.

![25](https://github.com/jun-source/cookies-bootloader/assets/122213795/416fc572-9f6e-4ae7-a96c-57375879814c)

    By checking the modified memory range 0x0FE04000 - 0x0FE047FF (2 KB), we see that the keys are loaded to a reserved region on the flash called *Lockbits*. The tools give the users the ability of write-protecting some regions of the flash that contains data that we might don't want them to be overwritten like cryptographic keys or the bootloader. This feature need to be activated manually by the user just like secure boot. In this showcase, write-protection will be disabled, but you may want to activate it in your application.

![26](https://github.com/jun-source/cookies-bootloader/assets/122213795/bc898b93-addc-46a5-a640-29207ff6f28a)

13. The last step would be the generation of a signed firmware image on GBL format. The same *create_bl_files.sh* script used at STEP 4 is valid. As mentioned before, in order to the create the encrypted and signed firmware images, the correspondent keys must be located in the same folder as *create_bl_files.sh* by the name of *app-encrypt-key.txt* for the AES key and by the name of *app-sign-key.pem* for the private key of ECDSA. Therefore, you need to copy and rename the keys generated previously:

    *cp <root-project>/btl-fw-upgrade-ws/keys/app-encrypt-key <root-project>/btl-fw-upgrade-ws/firmware/images/app-encrypt-key.txt*

    *cp  <root-project>/btl-fw-upgrade-ws/keys/app-sign-key <root-project>/btl-fw-upgrade-ws/firmware/images/app-sign-key.pem*

    Execute *create_bl_files.sh* and take a look to *output_gbl/* folder.
    
![27](https://github.com/jun-source/cookies-bootloader/assets/122213795/7fb8bb9b-ca5e-4784-a2e3-b31044af1b57)

    For UART DFU:

    - full.gbl: regular GBL file containing the firmware image.

    - full-crc.gbl: same as full.gbl but with checksum for integrity validation.
    - full-encrypted.gbl: AES encrypted GBL file.
    - full-signed.gbl:: ECDSA signed GBL file.
    - full-signed-encrypted.gbl: AES encrypted and ECDSA signed GBL file.

15. Only remains upgrading the firmware through the *bt_host_uart_dfu* host program used in STEP 4. To verify that secure boot is enforcing firmware images to be signed by ECDSA, we will do a little test. First, a non-signed image will be flashed and we will check that the application has been blocked by the bootloader from booting. Then, we will do the same process, but with a signed image and we will check that the application will be running.

16. Disconnect the target device from the debugger a connect it to the host using the USB-C port.

17. Go to  *<root-project>/btl-fw-upgrade-ws/firmware*.

18. First, we will proceed with the non-signed image by executing `bash fw-upgrade.sh -p images/output_gbl/full.gbl.` We see that even we know that the application is "faulty" is still being downloaded. This shouldn't be allowed in a real case scenario. That's why on STEP 6, we will enforce firmware upgrades to be secure too.

![28](https://github.com/jun-source/cookies-bootloader/assets/122213795/f4c98c64-0e2e-471f-bb04-09b19f24f0c5)

20. Establish a communication channel using CoolTerm. You shouldn't see any messages even if you toggle the reset button multiple times. This means that the bootloader has blocked the application from loading.

![29](https://github.com/jun-source/cookies-bootloader/assets/122213795/6a3cb8fc-56be-4761-acec-234e94ca2f89)

22. This time, we will try with the signed image. Just in case make sure again to erase the contents of the main flash. Then download the signed firmware by executing `bash fw-upgrade.sh -p images/output_gbl/full-signed.gbl`. Open CoolTerm and this time should you get some messages from the application running on the target device. This means that the bootloader has authenticated the application and it has let it run.

![30](https://github.com/jun-source/cookies-bootloader/assets/122213795/d474bd4d-c97e-4908-9a96-9f38fd9d19b5)

## STEP 6: a bootloader that enforces secure boot and secure firmware upgrade

On STEP 6, we noticed that even secure boot enforces applications to be authenticated on boot time, we must also avoid malicious firmware that doesn't meet with our security expectations to be flashed to the device. The SoC manufacturer makes a distinction between secure boot and secure firmware upgrade. They are activated separately. On STEP 5, we only enabled secure boot. On STEP 6, the current one, we will have both secure boot and secure firmware upgrade. Both are managed by the bootloader. Secure firmware upgrade will consist of encrypting the GBL firmware image using AES-CTR-128 and signing it with the **same ECDSA private key used for secure boot**. The keys loaded on STEP 5 are valid for STEP 6.

1. Connect the target device to the STK debugger.
2. Just in case, erase the contents of the main flash just like on STEP 5.
3. Create a new bootloader project based on *Bootloader - NCP BGAPI UART DFU* example and name it *bootloader-uart-bgapi-secureboot*-fw-signed-encrypt. Just like on STEP 3 set properly  *bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config/btl_uart_driver_cfg.h* to match with the target device USART0 pinout.
4. Open *bootloader-uart-bgapi-secureboot-fw-signed-encrypt/config/btl_core_cfg.h*. Set *#define BOOTLOADER_ENFORCE_SECURE_BOOT* to 1 to enable secure boot. Set *#define BOOTLOADER_ENFORCE_SIGNED_UPGRADE* and *#define BOOTLOADER_ENFORCE_ENCRYPTED_UPGRADE* macros to 1 to enforce signed and encrypted firmware upgrades.

![31](https://github.com/jun-source/cookies-bootloader/assets/122213795/5600e4fb-4f07-43cc-89fa-b33d6809de42)

6. Build the project.
7. Go to *<root-project>/btl-fw-upgrade-ws/bootloader*. Don't forget to source *set-env.sh* if you hadn't done before.
8. Copy *<root-project>/simplicity-studio-ws/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/artifact* folder and rename it as *<root-project>/btl-fw-upgrade-ws/bootloader/images/bootloader-uart-bgapi-secureboot-fw-signed-encrypt*.
9. Load the bootloader to your target device by executing `bash load-bootloader.sh -p images/bootloader-uart-bgapi-secureboot-fw-signed-encrypt/bootloader-uart-bgapi-secureboot-fw-signed-encrypt-crc.s37`.
10. Remember that we have already generated the ECDSA keypair and the AES key, and flashed them to the target device on STEP 5. For this showcase, we will not do it again. Nevertheless, on a real case scenario you should be aware of the exposure of your keys and ought to have a policy for managing them carefully.
11. The last step will be upgrading the firmware. Again, we will upload a faulty firmware to check that the bootloader enforces signed and encrypted firmware upgrades. Then, we will download the correct one. Remember that we have already generated all the firmware images on STEP 5.
12. Disconnect the target device from the debugger and connect it through the USB-C port.
13. We will start with the faulty one. For example, we will try to upload a image that is only signed but not encrypted. Execute `bash fw-upgrade.sh -p images/output_gbl/full-signed.gbl`. You will see that the process fails and the malicious firmware has not been flashed to the device.

![32](https://github.com/jun-source/cookies-bootloader/assets/122213795/33e5447a-1952-43a9-bfa1-06660c4aae86)

15. Finally, we will be load the signed and encrypted firmware image which is the one that current bootloader expects. Execute `bash fw-upgrade.sh -p images/output_gbl/full-signed-encrypted.gbl`. This time the upgrade process doesn't fail. Notice that the size of the different GBL files varies depending on the number of features that has been added (ECDSA sign, AES encryption, CRC, etc).

![33](https://github.com/jun-source/cookies-bootloader/assets/122213795/0abf02dd-a8a2-4031-9114-e4e333037311)

17. You can double-check by opening CoolTerm and see that the application is running.
