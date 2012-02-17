# Baking the Assembled PCB

*BAKING DETAILS COMING SOON...*
/-- 337x260 img/reflow/IMG_0380.JPG "" Before bake --/
/-- 337x260 img/reflow/IMG_0382.JPG "" Into the oven we go! --/
/-- 337x260 img/reflow/IMG_0383.JPG "" Man it's HOT HOT HOT in here! 181&deg; the reflow process has begun peaking around 215&deg; --/
/-- 337x260 img/reflow/IMG_0389.JPG "" Time to cool down. 

**note :** the three PCBs have been assembled differently.
 
- Left : Partial assembled PCB with on-board sensors and USB connector removed for mini-USB mod.
- Center : Blank PCB (I forgot to bring the MCU and FTDI chip along with me, so those are missing, will be put on soon).
- Right : Partial assembled PCB with setup for off-board (OEM) sensors.
--/

#### AFTER BAKING INSPECTION

- Check the entire PCB for Solder bridges, especially on MCU, U20, U29, U30
- Examine the new solder joints for dryness, this is normally depicted by dull looking solder, it all should be rather shinny.
- Clear any solder beads that may have formed on the PCB, this can easily be performed by using a tooth brush and giving the PCB a quick and careful scrub.

#### AFTER BAKING TESTING

**Testing MCU power supply**

- Attach wires to the following pads;
	- RED wire to **BAT-MCU** P1.
	- BLACK wire to **GND** P5.

- Connect probes;
	- Black probe to **GND**
	- Red probe to **5V** on **BDM** header

- Set the Multi-meter to a low voltage DC scale (some where around 20V will be OK)
- Set the power supply to 12V
	- If you can current limit your power supply then do so 100mA will work, alternatively you can current limit by placing a 120&ohm; - 1Watt resistor in series with the +12v power lead. 
- Power on the supply (12V) the volt meter should show **5V** +- 0.20V. 
	- If it is **NOT** 5V promptly switch off and disconnect from supply you have made an error during assembly. Recheck all [steps](#assembly1_primary)! 
	- If you read 5V, you're good! continue on to [through-hole assembly](#assembly13_after_reflow).

