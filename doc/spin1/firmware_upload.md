## Uploading the firmware

### Installing the serial monitor
/-- 128x128 img/placeholder_image.png "Using BDM pod and installing the freeems-loader"
 - Connect a serial adapter to the BDM pod on your Puma board
 - Install Codewarrior or other software able to program an S12 MCU via BDM.
 - Download the [serial monitor firmware](https://github.com/fredcooke/freeems-vanilla/raw/master/lib/freeems.serial.monitor.s19)
 - Upload the serial monitor: in CodeWarrior, debug->File->Load.
 - Profit!

--/

### Uploading the firmware
/-- 128x128 img/placeholder_image.png "Uploading the firmware"

1. Install [SeanK’s loader](https://github.com/seank/freeems-loader)
2. Connect an USB cable between your computer and Puma
3. Turn Puma on (jumper the load/run header).
4. Select the device ``/dev/ttyUSB[n]`` in Unix-like operating systems and ``COM[n]`` on Windows.
5. Press the "Load" button.
6. In the dialog, select the .s19 firmware file you want to use.
7. Wait until the erasing and programming phases are done.
8. Close the communications.
9. Remove the load/run jumper in the header and reset de board.

*The FreeEMS firmware is now installed on your Puma board.*

--/

