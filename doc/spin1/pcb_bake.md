## Baking the Assembled PCB ##

BAKING DETAILS COMING SOON...

#### AFTER BAKING INSPECTION ####

- Check the entire PCB for Solder bridges, especially on MCU, U20, U29, U30
- Examine the new solder joints for dryness, this is normally depicted by dull looking solder, it all should be rather shinny.

#### AFTER BAKING TESTING ####

**Testing MCU power supply**

- Attach wires to the following pads;
	- RED wire to **BAT-MCU** P1.
	- BLACK wire to **GND** P5.

- Connect probes;
	- Black probe to **GND**
	- Red probe to **5V** on **BDM** header

- Set the Mulit-meter to a low voltage DC scale (some where around 20V will be ok)
- Set the power supply to 12V
	- If you can current limit your power supply then do so 100mA will work, alternativly you can current limit by placing a 120&ohm; - 1Watt resistor in series with the +12v power lead. 
- Power on the supply (12V) the volt meter should show **5V** +- 0.20V. 
	- If it is **NOT** 5V promptly switch off and disconnect from supply you have made an error during assembly. Recheck all [steps](#assembly1_primary)! 
	- If you read 5V, you're good! continue on to [through hole assembly](#assembly13_after_reflow).
	

[Index](#index)
