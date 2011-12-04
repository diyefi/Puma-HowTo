# Installing the Serial Monitor (SM) #

*In the following sections it is assumed that you just completed the last task.*

## Installing the serial monitor
/-- 128x128 img/placeholder_image.png "Using BDM pod and installing the freeems-loader" --/
 - Connect a BDM pod to the BDM header on your Puma board
 - Power up the Puma board
 - Upload the [serial monitor firmware](https://github.com/fredcooke/freeems-vanilla/raw/master/lib/freeems.serial.monitor.s19) using the appropriate software for your BDM pod
 - One option is to use CodeWarrior as "the appropriate software":
	- Install [CodeWarrior] or other software able to program an S12 MCU via BDM.
     	- Upload the serial monitor: in CodeWarrior, debug->File->Load.
 - If possible, use the same program to verify that your load was succesful

*The Serial Monitor should now be installed on your Puma board.*


## Verifying correct operation of the Serial Monitor
/-- 128x128 img/placeholder_image.png "Jumpering the load/run header for SM testing" --/
 - If the BDM is still connected, disconnect it now
 - Jumper the load/run header and reset power to the board
 - Connect a USB cable between your computer and the Puma
 - Using cutecom, send various [Serial Monitor](http://www.freescale.com/files/microcontrollers/doc/app_note/AN2548.pdf) packets and verify that it responds correctly

*You are now ready to load FreeEMS firmware onto your Puma board.*

[Index](#index)
