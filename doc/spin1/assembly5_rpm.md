#### Step 9 : RPM-1 circuit

Using solder paste, place beads on all of the following component pads U26, R214,C126, C125, R212, R213, R39, R40.

This is the smallest foot print that Spin 1 has, it will be difficult in most case to get a constant solder pasted and non bridged pads, a stanley knife can be used to create the seperation between pads and any excess paste cleaned up with sharpened cotton buds.

**note:** the solder paste will pull back to the pads and component pins during the reflow process, minor solder paste off pads will be **NO** problem.

/-- 337x260 img/reflow/IMG_0254.JPG "" Install RPM-1 circuit.

- **RPM - VR Input 1**
	- **U29**  *(MAX9924)* Due to the very fine foot print care will need to be taken with laying solder paste that **NO** bridges are formed.
	- **R214** *(10K&ohm;)*	
	- **C126** *(0.1µF)*
	- **C125** *(1nF)*
	- **R212** *(10K&ohm; 1/4watt)*
	- **R213** *(10K&ohm; 1/4watt)*
	- **R39**  *(1K&ohm;)*	
	- **R40**  *(**MOD** 0805 jumper)* use a 0805 package 0&ohm; jumper, this modification is made to maintain optimal input resistance to MCU.
	- **D24**  *(Zener not used)* negatively impacts on the signal fidelity.
--/

#### Step 10 : RPM-2 circuit
Using solder paste, place beads on all of the following component pads U30, R217, C128, C127, R215, R216, R41, R42.

/-- 337x260 img/reflow/IMG_0262.JPG "" Install RPM-2 circuit.

- **RPM - VR Input 2**
	- **U30**  *(MAX9924)* Due to the very fine foot print care will need to be taken with laying solder paste that **NO** bridges are formed.	
	- **R217** *(10K&ohm;)*	
	- **C128** *(0.1µF)*
	- **C127** *(1nF)*
	- **R215** *(10K&ohm; 1/4watt)*
	- **R216** *(10K&ohm; 1/4watt)*
	- **R41**  *(1K&ohm;)*	
	- **R42**  *(**MOD** 0805 jumper)* use a 0805 package 0&ohm; jumper, this modification is made to maintain optimal input resistance to MCU.	
	- **D26**  *(Zener not used)* negatively impacts on the signal fidelity.

**note:** in this image you can see an example of the solder paste bridging on the right side of U30, this was cleaned prior to being placed in the reflow oven.	
--/
