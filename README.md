# cookies-bootloader

#FIXME: REORGANIZE DOCUMENT

The purpose of this file is to record the 'tricks' and considerations for Cookies Bootloader project

- Simplicty Studio installation: 'https://docs.silabs.com/simplicity-studio-5-users-guide/latest/ss-5-users-guide-getting-started/install-ss-5-and-software.'
- Execute 'SimplicityStudio_v5/studiowayland.sh' to launch the IDE.
- Download CoolTerm for serial communication.
- Don't forget to set debugger's board switch to AEM.
- It seems like that brltty app was faultly interacting with CP210X USB-UART: 'https://forums.linuxmint.com/viewtopic.php?t=317567.'
- Simplicty Studio -> Launcher -> Overview -> Board -> Detect Targer Part.
- A easy way for interacting with Cookies is through USART0 which is connected to CP210X. When generating a fw image don't forget to include
  the drivers and match with Cookie's pinout(Check EFR32BG12 Datasheet and Cookie's schematic). 'iostream_usart_baremetal' example included 
  in GSDK may be useful ('sl_iostream_usart_vcom_config.h' for configuring USART).
- SimplicityCommander commands can be called from a terminal and being scripted. The executable can be found: '/home/jun/SimplicityStudio_v5/developer/adapter_packs/commander/commander'
- Under simplicity_v5-project/config there is a directory that contains files that configure the project through MACROS.
- Under /home/jun/SimplicityStudio/SDKs/gecko_sdk/app/bluetooth/example_host/bt_host_uart_dfu there is a C program for generating GBL files for UART DFU bootloader example.
- For iostream_usart_baremetal example there is a bug when including APP_PROPERTIES component, need to:
	- Add under iostream_usart_baremetal/gecko_sdk/bootloader the following api/application_properties.h from SDK directory.
	- Also modify the relative paths in the warned files when compiling.
	- https://community.silabs.com/s/question/0D58Y00008ZZjOASA1/app-properties-not-working-in-gsdk-402?language=en_US

The following instructions were only tested for Cookies WSN. From now they will be refered as target device.

#FIXME: TRY TO RECREATE STEP 1 AGAIN ON A DIFFERENT DEVICE
STEP 1: DOWNLOAD SIMPLICITY STUDIO AND SET UP YOUR HOST DEVICE 
	1. Follow the instructions given by 'https://docs.silabs.com/simplicity-studio-5-users-guide/latest/ss-5-users-guide-getting-started/install-ss-5-and-software'.
	2. Launch Simplicity Studio GUI by executing 'SimplicityStudio_v5/studiowayland.sh'.
	3. Plug your debugger and target device from Silicon Labs. Don't forget to switch your debugger board to AEM option. The GUI will detect the 
	   devices automatically. If not click on Simplicty Studio -> Launcher -> Overview -> Board -> Detect Target Part.
	4. Continue with the installation. A wizard will pop up listing the recommended SW tools and SDKs for the detected devices. Make sure to have 
	   a least GSDK v4.
	5. Download CoolTerm for serial communication with the target device.
	
STEP 2: RUN IOSTREAM_USART_BAREMETAL EXAMPLE ON YOUR TARGET DEVICE
It is recommended to run this example first because it will solve most of the UART communication issues between host and target due to misconfigurations.
The bootloader used in this project will use UART for FW upgrades.
	1. Create a new project based on iostream_usart_baremetal example provided by GSDK. This example project uses the I/O Stream service running 
	   in a bare-metal configuration to demonstrate the use of UART communication over the virtual COM port (VCOM). The application will echo back 
	   any characters it receives over the serial connection. The VCOM serial port can be used either over USB or by connecting to port 4902 if 
	   the kit is connected via Ethernet.
	2. You need to match the pin definition in the project with the pinout of your target device. The configuration is done at 
	   iostream_usart_baremetal/config/sl_iostream_usart_vcom_config.h. In the case of Cookies, USART0 will be used for the communication between
	   the host and the target device. RTS and CTS are disabled. You can check the specifics on EFR32BG12 datasheet and Cookie's schematic.
	3. Compile the project and click on Run for downloading the FW image to the target device.
	4. Disconnect the target device from the debugger and connect it through the USB port. Indetify the port where it is connected.
	5. On the host open CoolTerm and open a communication channel with the target device. You might need to click on the reset button of the target device
	   if no message appears.
	Notes: you might need to unistall brltty. It seems like CP210X-USB-UART bridge sometimes does not work well with brltty: 
	       'https://forums.linuxmint.com/viewtopic.php?t=317567'.

STEP 3: DOWNLOAD BOOTLOADER-UART-BGAPI ON YOUR TARGET DEVICE
	1. Create a new project based on bootloader-uart-bgap project provided by GSDK. Standalone Bootloader using the BGAPI protocol for UART DFU.
	   This is the recommended UART bootloader for the BLE protocol stack.
	2. Match again UART0 pin definition in the project with target device's pinout.
	3. Compile the project (TODO: explain the diffent executables).
	4. Load the bootloader to the target device using Simplicity Commander.

STEP 4: PERFORM A FW UPGRADE USING BT_HOST_UART_DFU FILE PROVIDED BY SILICON LABS
    1. Compile /home/jun/SimplicityStudio/SDKs/gecko_sdk/app/bluetooth/example_host/bt_host_uart_dfu.
    2. Set up environmental variables.
    3. Execute script to generate GBL files.
    4. Generate a upgrade FW image based on iostream_usart_baremetal. Add the APP_PROPERTIES component.
    4. Execute bt_host_uart_dfu to load full.gbl.