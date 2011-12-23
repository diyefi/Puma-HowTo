# Testing Inputs #

It's important that you verify the correct operation of your input conditioning circuits before attempting to use the device on a vehicle.

## Analogue circuit tester
/-- 337x260 img/placeholder_image.png "Schematic" 
Required parts;

 - 2K&ohm; through hole resistor.
 - 1K&ohm; variable resitor
 - Wire

Assemble the circuit as per the schematic on the left, for best results this can be done on vero board. Make **100% sure** that the 2k&ohm; resistor is connected between the **V** supply and variable resistor, this will ensure that damaging voltages cannot be supplied to the analogue circuit.

You will now have 3 wire attached they are connected as follows;

 - Vbat -  Connect to Spin1 supply source.
 - Vtest - Connect this wire to the analogue circuit to be tested.
 - GND - Connect to Spin1 ground.

Test the test circut for correct operation, monitor the voltage between **Vtest** and **GND** while varing the varialbe resistor between it's extremes. You should observe a voltage swing between 0 and approx +4.5V. **Make sure you cannot exceed 5V at any stage!**
--/

## Testing analogue inputs
/-- 337x260 img/placeholder_image.png "MTX gauges and sliders"
 
 - Attach a variable voltage source or the 'Analogue circuit tester' above to one of the Spin1 analogue circuits.
 - Vary the variable resistor and observe a corresponding values changing within the tunner (MTX is a good option).
 - Repeat the process for all analogue circuts being tested.
	- If there is no change seen within MTX check the following:
		- That you have the correct corresponding analogue cirucit.
		- The analogue circuit is correctly assembled. 
--/

## Testing RPM inputs ##

 - *Attach an RPM signal source (To be added new Fred and John's new testing app)*
 - *Load appropriate code for that signal type.*

### Logic Analyser (LA) RPM check ###
/-- 337x260 img/placeholder_image.png "Logic analyser log trace" 
 
Test procedure:

 - Take a LA type log maintaining a RPM below 2k.
 - Review that .LA log with OLV and confirm that the reported RPM is smooth and matches your expectations (should look similar to the RPM LA LOG left).
--/

### Full RPM range check ###
/-- 337x260 img/placeholder_image.png "Logic analyser log trace"

Test procedure:

 - Take a standard binary (.bin) log while varying the rate of your signal
 - Review that .bin log with OLV and confirm that the reported RPM is smooth and matches your expectations
--/

