## Uploading the firmware ##

/-- 128x128 img/placeholder_image.png "Uploading the firmware"

1. Install [SeanK’s loader].
2. Connect a USB cable between your computer and Puma.
3. Jumper the load/run header.
4. Turn Puma **on**.
5. Select the device ``/dev/ttyUSB[n]`` in Unix-like operating systems and ``COM[n]`` on Windows. Where 
``[n]`` is the port number e.g.: ``/dev/ttyUSB0`` or ``COM3``
6. Press the "**Connect**" button.
7. Press the "**Load**" button.
8. Choose a recent s19 of the Bench Test firmware variant. 
9. Wait until the erasing and programming phases are done.
10. Press the "**Close/reset**" button.
11. Remove the load/run jumper.
12. Power cycle Puma.

*The FreeEMS Bench Test firmware should now be installed on your Puma board.*

--/

### Verifying correct operation of the firmware ###

/-- 128x128 img/placeholder_image.png "CuteCom streaming FreeEMS data logs"
 - Connect CuteCom with the correct settings and hex mode on
 - Verify that data is streaming past at a high rate
 	- Send the stop data logging packet from the lib directory and ensure that the stream stops
 - Clear the text area and turn off hex mode
 - Send the get firmware, interface and decoder version packets from the lib directory
 	- Ensure that the strings returned match what you uploaded

*You are now ready to test your physical outputs using the Bench Test decoder.*

--/
