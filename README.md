# cookies-bootloader (PROVISIONAL)

The following steps were **only** tested on Cookies WSN boards. In this document, they will be referred as the **target devices**. On the other hand, we will use the term **host device** to refer the machine used for development.

## STEP 1: DOWNLOAD SIMPLICITY STUDIO AND SET UP YOUR HOST DEVICE

**#FIXME: TRY TO RECREATE STEP 1 AGAIN ON A DIFFERENT DEVICE**

1. Follow the instructions given by *https://docs.silabs.com/simplicity-studio-5-users-guide/latest/ss-5-users-guide-getting-started/install-ss-5-and-software*.
2. Launch Simplicity Studio GUI by executing *SimplicityStudio_v5/studiowayland.sh*.
3. Connect your host device to the target device through a STK debugger. Don't forget to switch your debugger board to **AEM**.
4. Continue with the installation. A wizard will pop up listing the recommended tools and SDKs for the detected devices. If the target device is not detected automatically click on *Simplicty Studio -> Launcher -> Overview -> Board -> Detect Target Part* . If the GUI is not able to detect the device, you may install manually GSDK v4 (it contains the examples used in this project).
5. We recommend you to download CoolTerm for serial communication with the target device.

## STEP 2: RUN IOSTREAM_USART_BAREMETAL EXAMPLE ON YOUR TARGET DEVICE

It is recommended to run this example first. It will solve most of the USART communication issues between the host and the target due to USART has not been properly configured by the SW. Furthermore, the bootloader used in this project will use USART for FW upgrades. It will be easier to debug the UART configuration on  *iostream_usart_baremetal example* rather on the bootloader project.

1. Connect the target device to the STK debugger.

2. Create a new project based on *iostream_usart_baremetal example* provided by GSDK. This example project uses the I/O Stream service running in a bare-metal configuration to demonstrate the use of USART communication over the virtual COM port (VCOM). The application will echo back any characters it receives over the serial connection. The VCOM serial port can be used either over USB or by connecting to port 4902 if the kit is connected via Ethernet.

3. You need to match USART pin definition in the project with the pinout of the target device. The configuration is done at *iostream_usart_baremetal/config/sl_iostream_usart_vcom_config.h*. In the case of Cookies, USART0 will be used for the communication between the host and the target device. RTS and CTS are disabled. You can find more information on EFR32BG12's datasheet and Cookie's schematic.

![Screenshot from 2024-01-02 18-26-27](https://github.com/jun-source/cookies-bootloader/assets/122213795/be9dd609-6180-4827-9d65-bb5260a6426b)

4. Compile the project and click on Run for downloading the FW image to the target device.

5. If the operation has been successful, disconnect the target device from the STK debugger. Then connect the target device to the host through the USB-C available on the target device. Make sure to identify the port where the target device has been connected.

6. Verify that FW has been downloaded and it works as expected. Launch CoolTerm and open a communication channel with the target device by selecting the serial port. If there is no response from the target device, you might need to toggle its reset button.

Notes:

- You might need to unistall brltty. It seems like the CP210X USB-UART bridge present on the target device sometimes does not work well with brltty *https://forums.linuxmint.com/viewtopic.php?t=317567*.

## STEP 3: DOWNLOAD BOOTLOADER-UART-BGAPI EXAMPLE ON YOUR TARGET DEVICE

The next step will be loading one of the bootloader examples provided by the manufacturer. In particular, *bootloader-uart-bgap example*. You will need to configure again USART pinout definition on the source code and compile it. The generated binaries will be flashed using Simplicity Commander. Simplicity Commander is a single, all-purpose tool to be used in a production environment. It is invoked using a simple Command Line Interface (CLI) that is also scriptable. Simplicity Commander enables customers to complete these essential tasks: flash their own applications, configure their own applications and create binaries for production.

 1. Connect again the target device to the STK debugger.

 2. Create a new project based on *bootloader-uart-bgap example* provided by GSDK. This is a standalone bootloader using the BGAPI protocol for UART DFU. This is the recommended UART bootloader for the BLE protocol stack.

 3. Match USART0 pinout definition in the source code with target device's pinout by modifying *bootloader-uart-bgapi/config/btl_uart_driver_cfg.h*.

    ![Screenshot from 2024-01-02 18-29-54](https://github.com/jun-source/cookies-bootloader/assets/122213795/4eb0a5e4-20ac-4b2e-9401-4d3ee332724f)

 5. Generate the bootloader image by compiling the project. On Series 1 devices, three bootloader images are generated into the build directory: a main bootloader, a main bootloader with CRC32 checksum, and a combined first stage and main bootloader with CRC32 checksum. The main bootloader image is called <project-name>.s37, the main bootloader with CRC32 checksum is called <projectname> crc.s37, while the combined first stage image + main bootloader image with a CRC32 checksum is called <projectname>-combined.s37. The first time a device is programmed, whether during development or manufacturing, the combined image needs to be programmed. For subsequent programming, when a first stage bootloader is already present on the device, it is okay to download an image containing just the main bootloader. In this case, the main bootloader with CRC32 should be used. Assuming it is the first time the target device is loaded with a bootloader, we will use <projectname>-combined.s37.
    
    ![Screenshot from 2024-01-02 18-38-26](https://github.com/jun-source/cookies-bootloader/assets/122213795/52ef2006-eeca-42e8-8954-be6ae33eab58)

 7. The last step is load the bootloader through CLI commands using Simplicity Commander:

    ```
    ./home/$USER/SimplicityStudio_v5/developer/adapter_packs/commander/commander flash -d  EFR32BG12P132F1024GL125 images/bootloader-uart-bgapi-combined.s37
    ```

## STEP 4: PERFORM A FW UPGRADE USING BT_HOST_UART_DFU EXAMPLE

*bt_host_uart_dfu example* is a C program provided by the manufacturer which is intended to be executed on the host and interacts with the bootloader set into DFU mode for FW upgrade operation.

   1. Disconnect the target device from the STK debugger and connect it through the USB C port to the host.

   2. Create a FW image based again on *iostream_usart_baremetal example* but adding the App Properties bootloader component. This component is needed to generate the GBL file using the commander utility. It seems like there is a bug described at https://community.silabs.com/s/question/0D58Y00008ZZjOASA1/app-properties-not-working-in-gsdk-402?language=en_US. You will also need to solve the compilation error logs.

      ![Screenshot from 2024-01-02 19-24-25](https://github.com/jun-source/cookies-bootloader/assets/122213795/9c4711ad-78ca-4079-b7d3-5a28063c3dec)

   5. The next step will be creating the GBL files. You can either execute the correspondent CLI command on your own or you can use the script provided by the manufacturer *create_bl_files.sh*. In this example, we will use the script. You need to set up two environmental variables and move the FW upgrade image to the same directory as the script.

      `export PATH_SCMD=/home/$USER/SimplicityStudio_v5/developer/adapter_packs/commander`
      `export PATH_GCCARM=/home/$USER/SimplicityStudio_v5/developer/toolchains/gnu_arm/10.3_2021.10`

   6. Running the *create_bl_files script.sh* creates multiple GBL files in a subfolder named output_gbl. The file named full.gbl is the upgrade image used for UART DFU. The other files are related to OTA upgrades and they can be ignored. If signing and/or encryption keys (named app-sign-key.pem, app-encrypt-key.txt) are present in the same directory, then the script
      also creates secure variants of the GBL files.

   7. Compile */home/$USER/SimplicityStudio/SDKs/gecko_sdk/app/bluetooth/example_host/bt_host_uart_dfu*.

   8. Execute *bt_host_uart_dfu* to load full.gbl.

      `./bt_host_uart_dfu -u /dev/ttyUSB0 -b 115200 -f -l 4 output_gbl/full.gbl`
