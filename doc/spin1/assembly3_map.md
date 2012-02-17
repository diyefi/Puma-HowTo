#### Step 7 : MAP circuit

Using solder paste, place beads on all of the following component pads C23, C24, C66, R134, R50, R47.

**Note:** It is only possible to use either the on-board sensor **or** the off-board sensor, not both.

/-- 337x260 img/reflow/IMG_0219.JPG "MAP circuitry" Install MAP circuitry

- **C23** *(0.1µF)*	
- **C24** *(47pF)*	
- **C66** *(0.22µF)*	
- **R134** *(470R)* optimal ADC input resistance when used in conjunction with the two following modifications.	
- **R50** *(**MOD** 0805 jumper)* use a 0805 package 0&ohm; jumper, this modification is made to maintain optimal input resistance to MCU.	
- **R47** *(**MOD** 0805 jumper)* use a 0805 package 0&ohm; jumper, this modification is made to maintain optimal input resistance to MCU.	
- **R133** *(Not used no connection)*
--/

**OFF-Board (OEM) MAP**
/-- 337x260 img/reflow/IMG_0231.JPG "example of off-board (OEM) MAP"Off Board Manifold Air Pressure (Add these components if you plan on having off-board MAP sensor : i.e. OEM MAP)

Using solder paste, place beads on all of the following component pads D31, D32, C29.

- **D31** *(Schottky)* direction dependant, orient the **K** lead to the TOP of the PCB.
- **D32** *(Schottky)* direction dependant, orient the **K** lead to the BOTTOM of the PCB.
- **C29** *(0.1µF)*
--/

**ON-Board MAP**
/-- 337x260 img/reflow/IMG_0227.JPG "Photo of MPX series MAP sensor" The MAP sensor is installed later in the through-hole section.

On-board MAP requires no additional components for the reflow process

- **D31** *Not used no connection.*
- **D32** *Not used no connection.*
- **C29** *Not used no connection.*	
--/

