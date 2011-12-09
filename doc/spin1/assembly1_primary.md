entails## Phase ONE Pre Reflow ##
### Component Placement ###
#### MCU circuits ####

Follow the [BOM] and locate the component values XXXXXXXXXX, topology of then circuit can be seen in the schematics.

The PCB to component directions will always be referenced in the following manner:

- PCB TOP side orientation: 
	- "**Spin 1**" and Puma eyes will always be in the lower right hand corner.

- PCB BOTTOM side orientation:
	- **MAP** and **AAP** are located on the left edge, with "Puma" and eyes mid to upper right side. 


If you have received a BLANK PCB start here, if you received a PARTIAL PCB skip to *step 3.xxx* 


/-- 760x570 img/soldered_mcu.jpg "" Install the MCU, its regulator, the PLL and crystal circuits. This is what it should look like once completed.
Note: Some partial boards were shipped with minimal components required to load code, they require the installation of the following components XXXXXXXXXX. --/

**Step 1 :** 
/-- 760x570 img/placeholder_image.png "image to show MCU with glue and thermal paste, second with solder paste and third with MCU orientation" Install the MCU, this will be one of the most difficult components for you to place. It will require a steady hand and patience. The MCU is placed first as it is the most fiddly and requires the most work, this will ensure no other components are bumped during the process:

 1. Take the syringe of solder paste and apply a bead to each of the copper pads for the MCU pins this will be XX pads in total. Make sure that you **do not** bridge between pads, care here will save you hours further down the track.
 2. Place a small drop of glue at the underside of the MCU centre, this will lightly 'tack it' to ensure it doesn’t move during assembly and reflow process.
 3. It is recommended that thermal paste be placed around the glue in the centre of the MCU as this will help to dissipate heat to the copper heat pad below. Make sure that thermal paste is not placed all the way out to the MCU edge as it will ooze out when placed, no thermal paste should contact any pins.
 4. Now place the MCU in location noting that the orientation is marked by ...... 
 5. Allow to set for a few minutes with out moving the PCB.


*Congratulations the MCU is now mounted*
--/
	
**Step 2 :** 
/-- 760x570 img/placeholder_image.png "" Install the PLL circuits.

Using solder paste place beads on all of the following component pads R181, R178, R177, C98, R179, C93, C95, R175, C94, R176, X3, C96, C97.

Place these components in this order:

 1. **C94**  *(680pF)* can be mounted in either direction (Non polarised).
 2. **C93**  *(6.8nF)* can be mounted in either direction (Non polarised).
 3. **C95**  *(0.22µF)* can be mounted in either direction (Non polarised).
 4. **R175** *(3.3K&ohm;)*

*PLL circuit assembly is now complete*
--/
	
**Step 3 :** 
/-- 760x570 img/placeholder_image.png "" Install the crystal, resistors and capacitors.

Using solder paste place beads on all of the following component pads C99, R251, C100, C101, C102.

 1. **C96**  *(22pF* or *15pF* or *33pF)* only use one value three are presented for tuning options, TBA on optimum value.
 2. **C97**  *(22pF* or *15pF* or *33pF)* only use one value three are presented for tuning options, TBA on optimum value.
 3. **R176** *(10M* or *1M)* only use one value three are presented for tuning options, TBA on optimum value.
 4. **X3**   *(16MHz)* tba.......
 5. **C98**  *(0.22µF)* can be mounted in either direction (Non polarised).
 6. **C99**  *(0.22µF)* can be mounted in either direction (Non polarised).
 7. **R251** *(1K&ohm;)*
 8. **C100** *(0.22µF* can be mounted in either direction (Non polarised).
 9. **C101** *(0.22µF)* can be mounted in either direction (Non polarised).
10. **C102** *(0.22µF)* can be mounted in either direction (Non polarised).
--/

**Step 4 :** 
/-- 760x570 img/placeholder_image.png "show image of reg install, " Install MCU power regulator.

Using solder paste place beads on all of the following component pads U2, C5, C6, D92, C3, D1.

 1. **U2** *(MIC2954)* A generous coating of solder paste on the regulator tab so that the entire tab will be covered with solder, this assists with transfer heat out of the component.
 2. **C5** *(22µF)* Polarised Tantalum capacitor; Make sure that it is orientated so that the negative lead is closest to the MCU.
 3. **C6** *(0.1µF)* can be mounted in either direction (Non polarised).
 4. **D92** *(Schottky)* Direction dependant, orientate the **K** lead to the right. This is indicated by the white line and the end it is closest to. 
 5. **C3** *(0.1µF)* can be mounted in either direction (Non polarised).
--/ 
/-- 760x570 img/placeholder_image.png " image of mod made with component D1"
 6. **D1** *(**MOD** 0805 jumper)* This simple modification entails the use of a 0805 package 0&ohm; link soldered in the diodes place.
--/

**Step 5 :** 
/-- 760x570 img/placeholder_image.png "show image of reg install" Install main power regulator.

Using solder paste place beads on all of the following component pads C9, C10, C12.

 1. **C9**  *(0.1µF)*
 2. **C10** *(22µF)* **Polarised Tantalum capacitor**; Make sure that it is orientated so that the positive lead is closest to word C10 on silkscreen.
 3. **C12** *(0.1µF)*
--/

**Step 6 :**
/-- 760x570 img/placeholder_image.png "show USB mod assembly" 

to be competed

--/

[index](#index)
