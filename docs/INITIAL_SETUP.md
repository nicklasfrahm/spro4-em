# Initial test

## Getting started

1. Connect 12V power supply to barrel jack _(J20)_.
2. Connect the USB-UART port of ZedBoard _(J14)_ which is labeled **UART** to a PC using the MicroUSB cable.
3. Insert the 4GB SD card included with ZedBoard into the SD card slot _(J12)_ located on the underside of ZedBoard PCB. This SD card comes preloaded with demo software and contains a basic Linux configuration used to implement the demos listed in the later sections.
4. Verify the ZedBoard boot mode MIO[6:2] _(JP7-JP11)_ and MIO0 _(JP6)_ jumpers are set to SD card mode as described in the [**Hardware Users Guide (HWG)**](http://zedboard.org/sites/default/files/documentations/ZedBoard_HW_UG_v2_2.pdf)

   * MIO5 and MIO4 need to be connected to 3.3V _(high)_. MIO3 needs to be connected to GND _(low)_ to set the board into **SD card boot mode** _(HWG: page 34, page 27)_.
   * To use the SD card, _JP6_ also needs to be shorted _(HWG: page 10)_.

5. Turn power switch _(SW8)_ to the ON position. ZedBoard will power on and the Green Power Good LED _(LD13)_ should illuminate.
6. The PC may pop-up a dialog box asking for driver installation.

   The ZedBoard has a USB-UART bridge based on the **Cypress CY7C64225 chipset**. To use this feature a USB driver may be required on your host PC.

   **Note:** Check the device manager. If your computer already recognizes the device with a new COM port, it is very likely to work without the **CY7C64225 driver**.

   If Windows recognizes the USB-UART and loads the software driver, then the amber LED _D6_ is **_might_** light up _(see note below for further information)_. Please skip ahead to the next section. However, if the host PC does not recognize the USB-UART and does not enumerate it as a COM port device, refer to the **ZedBoard USB-UART Setup Guide.pdf** document, referenced by the document in the link below, for instructions on installing this driver. When the driver installation is complete, continue to the next step.

   [**CY7C64225 Setup Guide**](http://www.zedboard.org/sites/default/files/CY7C64225_Setup_Guide_1_1.pdf)

   **Note:** If the amber LED _D6_ does not light up, it might also work. Try to establish a serial connection and come back to this point if it does not work.

7. Wait approximately 15 seconds. The blue **Done** LED _(LD12)_ should illuminate, and a default image will be displayed on the OLED _(DISP1)_.

8. Use Device Manager to determine the COM Port.  
   **Note:** Each unique USB-UART device attached will enumerate under the next available COM port.

9. On your PC, open a serial terminal program (e.g PuTTY, TeraTerm, RealTerm).

10. Configure your serial terminal with the following parameters:

    * Port: `<port from device manager>`
    * Baudrate: `115200`
    * Data: `8 Bit`
    * Parity: `none`
    * Stop: `1 bit`
    * Flow control: `none`

    **Note:** The next step can be skipped, if RealTerm is used, but is required for TeraTerm

    * Transmit delay
      * 10 msec/char
      * 100 msec/line

11. If the amber USB-Link Status _(LD11)_ does not flicker to indicate activity, check the driver installation to determine if the device driver is recognized and enumerated successfully and that there are no errors reported by Windows.

12. When opening the connection, you should be greeted with some debug output and the `/bin/ash` like so:

    ```sh
    zynq>
    ```

## Linux Startup and Shutdown

1. Cycle power once by turning the power switch _(SW8)_ from ON to OFF and then back ON.

2. In the Terminal Window, a simple Linux image should boot with functionality that demonstrates the basic capabilities of
   ZedBoard.

3. When you are done using Linux, run the command poweroff and then switch off ZedBoard by positioning the power switch
   _(SW8)_ from ON to OFF.
