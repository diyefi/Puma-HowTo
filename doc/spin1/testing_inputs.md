# Testing Inputs

It's important that you verify the correct operation of your input conditioning circuits before attempting to use the device on a vehicle.

## Analogue circuit tester
/-- 337x260 img/operation/analogue_test_circuit.png "Analogue test circuit schematic" 
Required parts:

 - 2K&ohm; through hole resistor
 - 1K&ohm; variable resistor
 - Wire

Assemble the circuit as per the schematic on the left; for best results this can be done on vero board. Make **100% sure** that the 2k&ohm; resistor is connected between the **V** supply and variable resistor, this will ensure that damaging voltages cannot be supplied to the analogue circuit.

You will now have 3 wires attached, they are connected as follows:

 - Vbat -  Connect to Spin1 supply source.
 - Vtest - Connect this wire to the analogue circuit to be tested.
 - GND - Connect to Spin1 ground.

Test the test circuit for correct operation, monitor the voltage between **Vtest** and **GND** while adjusting the variable resistor between its extremes. You should observe a voltage swing between 0 and approx +4.5V. **Make sure you do not exceed 5V at any stage!**
--/

## Testing analogue inputs
/-- 337x260 img/placeholder_image.png "MTX gauges and sliders"
 
 - Attach a variable voltage source, or the 'Analogue circuit tester' above, to one of the Spin1 analogue circuits.
 - Adjust the variable resistor and observe the corresponding values changing within a tunner (MTX is a good option).
 - Repeat the process for all analogue circuits being tested.
	- If there is no change seen within MTX check the following:
		- That you have the correct corresponding analogue cirucit.
		- The analogue circuit is correctly assembled. 
--/

## Testing RPM inputs

 - *Attach an RPM signal source*
 - *Load appropriate code for that signal type.*

### Logic Analyser (LA) RPM check
/-- 337x260 img/operation/ovl_rpm_la.png "Logic analyser log trace review" 
 
Test procedure:
 - Load the Listener.s19 firmware to your puma MCU.
 - Take a LA type log maintaining a RPM below 2k.
 - Review the .LA log with OLV and confirm that **T0** it is clean, with no randomness (should look similar to the RPM LA LOG left).

*note: future versions of OLV will be able to view LA logs. Please use an old version (hash 16e284fe56392a033f9aaee7ba3cf2958731c54e) of OLV to view LA logs at this time.*
--/

### Full RPM range check
/-- 337x260 img/operation/olv_rpm_fullbin.png "Review of RPM logging"

Test procedure:
 - Load the appropriate firmware for rpm test, the *HallOrOptical-Distributor-4of64.s19* is a good option.
 - Take a standard binary (.bin) log while varying the rate of your signal
 - Review the .bin log with OLV and confirm that the reported **RPM** variable is smooth and matches your expectations. (Shown left)
--/

*You are now ready to test your physical outputs using the Bench Test decoder.*

