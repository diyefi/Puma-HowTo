## Uploading the firmware

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
