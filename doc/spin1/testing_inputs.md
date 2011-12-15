# Testing Inputs #

It's important that you verify the correct operation of your input conditioning circuits before attempting to use the device on a vehicle.

## Testing analogue inputs
/-- 337x260 img/placeholder_image.png "MTX gauges and sliders" 
 - One by one, attach a variable voltage source such as a simple potentiometer to each analogue input
 - For each, vary the signal and observe the appropriate values changing in the displayed data in the tuner
--/

## Testing RPM inputs
/-- 337x260 img/placeholder_image.png "Logic analyser log trace"
 - Attach an RPM signal source
 - Load appropriate code for that signal type
 - Take a standard binary log while varying the rate of your signal
 - Review that log with OLV and confirm that the reported RPM is smooth and matches your expectations
 - Take a logic analyser type log mostly at low RPM
 - Review that log with OLV and confirm that the reported RPM is smooth and matches your expectations
--/

