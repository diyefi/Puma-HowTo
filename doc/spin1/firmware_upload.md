## Uploading the firmware

### Installing the serial monitor
/-- 128x128 img/placeholder_image.png "Using BDM pod and installing the freeems-loader"
 - Connect a serial adapter to the BDM pod on your Puma board
 - Upload the [serial monitor firmware](https://github.com/fredcooke/freeems-vanilla/raw/master/lib/freeems.serial.monitor.s19)
 - Install [SeanK’s loader](https://github.com/seank/freeems-loader)
 - ????
 - Profit!
<!-- And learn how to make comments -->
--/

### Uploading the firmware
/-- 128x128 img/placeholder_image.png "Uploading the firmware"


1. Connect an USB cable between your computer and Puma
2. Turn Puma on (jumper the load/run header).
3. Select the device ``/dev/ttyUSB[n]`` in Unix-like operating systems and ``COM[n]`` on Windows.
4. Press the "Load" button.
5. In the dialog, select the .s19 firmware file you want to use.
6. Wait until the erasing and programming phases are done.
7. Close the communications.
8. Remove the load/run jumper in the header and reset de board.

*The FreeEMS firmware is now installed on your Puma board.*

--/

