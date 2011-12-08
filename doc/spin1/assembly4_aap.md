#### AAP circuit ####
**Step X :**
Using solder paste place beads on all of the following component pads C21, C19, C20,C29, R51, R48.

- **C21** *(0.1uF)* can be mounted in either direction (Non polarised).
- **C19** *(Not used no connection)*
- **C20** *(47pF)* can be mounted in either direction (Non polarised).
- **C29** *(0.22uF)* can be mounted in either direction (Non polarised).
- **R51** *(470R)* optimal ADC input resistance when used in conjuction with the following modification.	
- **R48** *(**MOD** 0805 jumper)* se a 0805 package 0&ohm; jumper, this modifation is made to maintain optimal input resistance to MCU.

**ON-Board AAP**

- Requires no additional components for the reflow process
	- **D33** *(Not used no connection)*	
	- **D34** *(Not used no connection)*	
	- **C30** *(Not used no connection)*	

**OFF-Board (OEM) AAP**
/-- 128x128 img/placeholder_image.png "" Off Board Atmospheric Absolute Pressure.

Off-Board Atmospheric Absolute Pressure sensor (Add these components if you plan on having off board AAP sensor : ie OEM MAP)

Using solder paste place beads on all of the following component pads D33, D34, C30.

- **D33** *(Schotty)* direction dependant, orentate the **K** lead to the TOP of the PCB.
- **D34** *(Schotty)* direction dependant, orentate the **K** lead to the BOTTOM of the PCB.
- **C30** *(0.1uF)* an be mounted in either direction (Non polarised).
--/
