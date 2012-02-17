## Method ONE : Pre Reflow
#### MCU circuitry

Follow the [BOM]. Select the corresponding tab with the sub-circuit that you are assembling, in this case the **Primary Parts** tab. You will find the correct component values there. The topology of the circuit being assembled can be seen in the schematics.

If you have received a BLANK PCB start here, if you received a PARTIAL PCB skip to step 6, [*BRV Circuit*](#assembly2_brv) 

/-- 337x260 img/soldered_mcu.jpg "Partial assembled PCB" Installed is the MCU, its regulator, the PLL and crystal circuits. Shown is the shipped partially assembled PCB.
--/

**Step 1 :** 
/-- 337x260 img/placeholder_image.png "image to show MCU with glue and thermal paste, second with solder paste and third with MCU orientation" 

Install the MCU, this will be one of the most difficult components for you to place. It will require a steady hand and patience. The MCU is placed first as it is the most fiddly and requires the most work, this will ensure no other components are bumped during the process:

 1. Take the syringe of solder paste and apply a bead to each of the copper pads for the MCU pins this will be 112 pads in total. Make sure that you **do not** bridge between pads, care here will save you hours further down the track.
 2. Place a small drop of glue at the underside of the MCU centre, this will lightly 'tack it' to ensure it doesn’t move during the assembly and reflow process.
 3. It is recommended that non-conductive thermal paste be placed around the glue in the centre of the MCU as this will help to dissipate heat to the copper heat pad below. Make sure that thermal paste is not placed all the way out to the MCU edge as it will ooze out when placed, no thermal paste should contact any pins.
 4. Now place the MCU in location noting that the orientation is marked by ...... 
 5. Allow to set for a few minutes with out moving the PCB.


*Congratulations the MCU is now mounted*
--/

**Step 2 :** 
/-- 337x260 img/reflow/IMG_0176.JPG "" Install the PLL circuits.

To make life easier place solder paste beads on all of the following component pads R181, R178, R177, C98, R179, C93, C95, R175, C94, R176, X3, C96, C97. These will be assembled over the next 2 steps.

Place these PLL components in this order:

 1. **C94**  *(680pF)*
 2. **C93**  *(6.8nF)*
 3. **C95**  *(0.22µF)*
 4. **R175** *(3.3K&ohm;)*
--/

/-- 337x260 img/reflow/IMG_0188.JPG ""
*PLL circuit assembly is now complete*
--/

**Step 3 :** 

Install the crystal, resistors and capacitors.

Using solder paste place beads on the following component pads C99, R251, C100, C101, C102.

/-- 337x260 img/reflow/IMG_0204.JPG "" 

 1. **C96**  *15pF*
 2. **C97**  *15pF*
 3. **R176** Don't install
 4. **X3**   *(16MHz)* the crystal can be mounted in either direction. 
 5. **C98**  *(0.22µF)*
 6. **C99**  *(0.22µF)*
 7. **R251** *(1K&ohm;)*
 8. **C100** *(0.22µF*
 9. **C101** *(0.22µF)*
10. **C102** *(0.22µF)*
--/

**Step 4 :** 
/-- 337x260 img/reflow/IMG_0195.JPG "" Install MCU power regulator.

Using solder paste place beads on all of the following component pads U2, C5, C6, D92, C3, D1.

 1. **U2** *(MIC2954)* A generous coating of solder paste on the regulator tab so that the entire tab will be covered with solder, this assists with transfer heat out of the component. As an optional extra heat paste (white) has been added to the center of the regulator this will help transfer excess heat down and out the thermal vias.
 2. **C5** *(22µF)* Polarised tantalum capacitor; Make sure that it is oriented so that the negative lead is closest to the MCU.
 3. **C6** *(0.1µF)* 
 4. **D92** *(Schottky)* Direction dependant, orient the **K** lead to the right. This is indicated by the white line and the end that the line is closest to. 
 5. **C3** *(0.1µF)* 
--/ 
/-- 337x260 img/reflow/IMG_0188.JPG ""
 6. **D1** *(**MOD** 0805 jumper)* This simple modification entails the use of a 0805 package 0&ohm; jumper, or wire link soldered in the diodes place.
--/

**Step 5 :** 
/-- 337x260 img/reflow/IMG_0199.JPG "" Install capacitors for main power regulator.

Using solder paste place beads on all of the following component pads C9, C10, C12.

 1. **C9**  *(0.1µF)*
 2. **C10** *(22µF)* **Polarised Tantalum capacitor**; Make sure that it is oriented so that the positive lead is closest to word C10 on silkscreen.
 3. **C12** *(0.1µF)*
--/
