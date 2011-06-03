## Uploading the firmware

### Installing the bootloader

 - Use A BDM pod to upload the binary file that you can download from here:

https://github.com/fredcooke/freeems-vanilla/raw/master/lib/freeems.serial.monitor.s19

### Using the USB bootloader

Install SeanK’s loader from https://github.com/seank/freeems-loader

(*Have to put some screenshots here!*)

(*And learn how to make comments*)

Its an easy to use application. Just connect to the USB and power up Puma (jumpering
the load/run header), select the device /dev/ttyUSB0 in *nixes (COMxx in windows), and
push the load button.

In the ﬁle dialog, select the .s19 ﬁrmware you want.

Wait until it erases and program the device. Close the communications.

Remove the load/run jumper in the header and reset de board.

Congratulations! FreeEMS code is running in your board.
