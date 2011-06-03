## Uploading the firmware

Each step assumes that you just completed the last one.

### Installing the serial monitor
/-- 128x128 img/placeholder_image.png "Using BDM pod and installing the freeems-loader"
<<<<<<< HEAD
 - Connect a BDM pod to the BDM header on your Puma board
 - Power up the Puma board
 - Upload the [serial monitor firmware](https://github.com/fredcooke/freeems-vanilla/raw/master/lib/freeems.serial.monitor.s19) using the appropriate software for your BDM pod
   - One option is to use CodeWarrior as "the appropriate software":
     - Install CodeWarrior or other software able to program an S12 MCU via BDM.
     - Upload the serial monitor: in CodeWarrior, debug->File->Load.
 - If possible, use the same program to verify that your load was succesful

*The Serial Monitor should now be installed on your Puma board.*

--/

### Verifying correct operation of the Serial Monitor
/-- 128x128 img/placeholder_image.png "Jumpering the load/run header for SM testing"
 - If the BDM is still connected, disconnect it now
 - Jumper the load/run header and reset power to the board
 - Connect a USB cable between your computer and the Puma
 - Using cutecom, send various [Serial Monitor](http://www.freescale.com/files/microcontrollers/doc/app_note/AN2548.pdf) packets and verify that it responds correctly

*You are now ready to load FreeEMS firmware onto your Puma board.*

--/

### Uploading the firmware
/-- 128x128 img/placeholder_image.png "Uploading the firmware"

1. Install [SeanK’s loader](https://github.com/seank/freeems-loader)
2. Connect an USB cable between your computer and Puma
3. Turn Puma on (jumper the load/run header).
4. Select the device ``/dev/ttyUSB[n]`` in Unix-like operating systems and ``COM[n]`` on Windows.
5. Press the "Connect" button
6. Press the "Load" button
7. Choose a recent s19 of the Bench Test firmware variant 
8. Wait until the erasing and programming phases are done
9. Close the communications.
10. Remove the load/run jumper
11. Press the "Close/reset" button

*The FreeEMS Bench Test firmware should now be installed on your Puma board.*

--/

### Verifying correct operation of the firmware
/-- 128x128 img/placeholder_image.png "Cutecom streaming FreeEMS datalogs"
 - Connect cutecom with the correct settings and hex mode on
 - Verify that data is streaming past at a high rate
 - Send the stop datalogging packet from the lib directory and ensure that the stream stops
 - Clear the text area and turn off hex mode
 - Send the get firmware, interface and decoder version packets from the lib directory
 - Ensure that the strings returned match what you uploaded

*You are now ready to test your physical outputs using the Bench Test decoder.*

--/
