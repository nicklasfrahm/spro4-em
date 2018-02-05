# Initial test

## Getting started

1. Connect 12V power supply to barrel jack _(J20)_.
2. Connect the USB-UART port of ZedBoard _(J14)_ which is labeled **UART** to a PC using the MicroUSB cable.
3. Insert the 4GB SD card included with ZedBoard into the SD card slot _(J12)_ located on the underside of ZedBoard PCB. This SD card comes preloaded with demo software and contains a basic Linux configuration used to implement the demos listed in the later sections.
4. Verify the ZedBoard boot mode MIO[6:2] _(JP7-JP11)_ and MIO0 _(JP6)_ jumpers are set to SD card mode as described in the [**Hardware Users Guide (HWG)**](http://zedboard.org/sites/default/files/documentations/ZedBoard_HW_UG_v2_2.pdf)

   * MIO5 and MIO4 need to be connected to 3.3V (high). MIO3 needs to be connected to GND (low) to set the board into **SD-Card boot mode** (HWG: page 34, page 27).
   * To use the SD card _JP6_ needs to be shorted (HWG: page 10).

5. Turn power switch _(SW8)_ to the ON position. ZedBoard will power on and the Green Power Good LED _(LD13)_ should illuminate.
6. The PC may pop-up a dialog box asking for driver installation.

   ZedBoard has a USB-UART bridge based on the Cypress CY7C64225 chipset. Use of this feature requires that a USB driver be installed on your Host PC.

   If Windows recognizes the USB-UART and loads the software driver, then amber LED D6 will light. Please skip ahead to the next section. However, if the host PC does not recognize the USB-UART and enumerate it as a COM port device refer to the **ZedBoard USB-UART Setup Guide.pdf** document in the link below for instructions on installing this driver. When driver installation is complete, continue to the next step.

   [**CY7C64225 Setup Guide v1.1**](http://www.zedboard.org/sites/default/files/CY7C64225_Setup_Guide_1_1.pdf)

7. Wait approximately 15 seconds. The blue Done LED _(LD12)_ should illuminate, and a default image will be displayed on the OLED _(DISP1)_.

8. Use Device Manager to determine the COM Port.  
   **Note:** Each unique USB-UART device attached will enumerate under the next available COM port.

9. On your PC, open a serial terminal program. (e.g PuTTY, TeraTerm, RealTerm)

10. Configure your serial terminal with the following parameters:

    * Port: `<port from device manager>`
    * Baudrate: `115200`
    * Data: `8 Bit`
    * Parity: `none`
    * Stop: `1 bit`
    * Flow control: `none`
    * Transmit delay _(**Note:** This step can be skipped, if RealTerm is used.)_
      * 10 msec/char
      * 100 msec/line

11. If the amber USB-Link Status _(LD11)_ does not flicker to indicate activity, check the driver installation to determine if the device driver is recognized and enumerated successfully and that there are no errors reported by Windows.

## Linux Startup and Shutdown

1. Cycle power once by turning the power switch _(SW8)_ from ON to OFF and then back ON

2. In the Terminal Window, a simple Linux image should boot with functionality that demonstrates the basic capabilities of
   ZedBoard.

3. When you are done using Linux, run the command poweroff and then switch off ZedBoard by positioning the power switch
   _(SW8)_ from ON to OFF.
