## Assembly (through-hole)

From this point on, all components will be soldered by hand with a soldering iron.

#### MCU power supply
/-- 337x260 img/throughhole/DSCF9175.JPG ""

- **C2** *(10µF)* Polarised tantalum capacitor;
 
Make sure that it is oriented correctly as per the silkscreen, positive lead closest to the MCU. 

Note; the longest lead is positive, if no markings are visible. 
--/
/-- 337x260 img/throughhole/DSCF9179.JPG "" **C2** tantalum capacitor installed.
--/

#### Main power supply ####
/-- 337x260 img/placeholder_image.png "" Assembling through hole components on main power supply.

 1. **U4**  *(LM2937)* Square pad = pin #1
 2. **D4**  *(1N4007)* Direction dependant, orient the **K** lead (marked with a white band) to the RIGHT of the PCB.
 3. **C8**  *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad. 
 4. **C11** *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad.
--/
/-- 337x260 img/throughhole/DSCF9186.JPG "" Assembled main power supply.
--/


**Power Supply Circuit Verification and Testing:** 
/-- 337x260 img/throughhole/DSCF9192.JPG ""Readings taken with no other connections made other than V supply.

- Voltage Main Supply = 4.8v 
- Voltage MCU = 5.06v 
- Current total = ~6mA

Both outputs are clean and interference free, as seen on oscilloscope. 

--/
/-- 337x260 img/throughhole/DSCF9190.JPG "" 
- Channel 1 trace (top) is at 2v per division = MCU Vout 
- Channel 2 trace (bottom) is at 5v per division = Main Supply Vout
--/

#### MAP On-board setup ####
/-- 337x260 img/reflow/IMG_0227.JPG "" on-board MAP connection.

- **U6** *(MPX4250A)* Pin 1 is identified via the square pad.

--/
/-- 337x260 img/throughhole/DSCF9208.JPG "" on-board MAP connection.

- Pin 1 on the pressure sensor can be identification via a small circular nick of material removed from one side the lead. 
--/
/-- 337x260 img/throughhole/DSCF9211.JPG "" MAP has been mounted from the underside of the PCB to so that the plastic casing is resting on the top side of the PCB this will remove unnecessary stresses from the pads during connection and disconnection of vacuum hose.
--/

#### AAP On-board setup ####
/-- 337x260 img/reflow/IMG_0250.JPG "" on-board AAP connection.

- **U5** *(MPX4100A)* Pin 1 is identified via the square pad.
--/
/-- 337x260 img/throughhole/DSCF9221.JPG "" on-board AAP installed.

- Pin 1 on the pressure sensor can be identification via a small circular nick of material removed from one side the lead. (this can be seen on in the image on the lower portion of the left most pin)
--/

#### Fuel ####
/-- 337x260 img/reflow/IMG_0277.JPG "" Fuel FET connection.

- **Q8**  *(Mosfet_N Channel)* Square pad is pin 1(Gate) pin 2(Drain) pin 3(Source) left to right, check with your FET data sheet for specifics. 

How you choose to mount it will depend on the casing it will reside in. 
--/
/-- 337x260 img/throughhole/DSCF9193.JPG "" Installed fuel driver.
--/
/-- 337x260 img/throughhole/DSCF9196.JPG "" The FET's have been mounted as shown so that they can be bent into a vertical position at a later time. This will be dependant on the case in which the board will reside. In any situation the leads should contain 2 x 90&deg; bends to ensure that NO long term mechanical stresses and vibrations will weaken the FET leads.
--/

#### INJECTION #### 
/-- 337x260 img/reflow/IMG_0362.JPG "" Injection FET connection.
Holding the FET with leads down and writing facing the front.

- Left lead = Gate (pin 1)
- Center lead = Drain (pin 2)
- right lead = Source (pin 3)

**MOD** These will be installed reverse mounted, as seen in the image left. **Pin 3** mounts to the square pad.
Repeat the process with as many FET's as you require up to a maximum of 8.
--/
/-- 337x260 img/throughhole/DSCF9199.JPG "" 

**injection 1**
- **Q15**  *(VNB10N07)*

**injection 2**
- **Q14**  *(VNB10N07)*

**injection 3**
- **Q13**  *(VNB10N07)*

**injection 4**
- **Q12**  *(VNB10N07)*

**injection 5**
- **Q11**  *(VNB10N07)*

**injection 6**
- **Q10**  *(VNB10N07)*

**injection 7**
- **Q16**  *(VNB10N07)*

**injection 8**
- **Q17**  *(VNB10N07)*

--/
#### INJECTION Hack ####
Preform this 3 step process for each injection FET that is installed. The hack should only be applied to the following part numbers U28, U27, U21, U22, U23, U24, U25, U26.

The following description is specifically for the Q17 FET install.
/-- 337x260 img/throughhole/DSCF9284.JPG "" Ground jumper : 

Placed a wire jumper between pins 4 and 5 on U28. 
--/
/-- 337x260 img/throughhole/DSCF9286.JPG "" LED mod :
 
Place a 3k&ohm; resistor between **BAT PWR** and pin 3 on U28.
--/
/-- 337x260 img/throughhole/DSCF9290.JPG "" Gate signal jumper : 

Place a wire jumper between pin 1 of U28 and the K end D91 (Jumper installed shown in yellow). 
--/

#### IGNITION #### 
/-- 337x260 img/throughhole/DSCF9204.JPG "" ignition FET connection.

- **Resistor Mod 100k pull-down** todo	
- **Resistor Mod 200Ω pull-up**	 todo

**ignition 1**
- **Q4**	*(VNB10N07)*

**ignition 2**
- **Q3**	*(VNB10N07)*

**ignition 3**
- **Q2**	*(VNB10N07)*

**ignition 4**
- **Q1**	*(VNB10N07)*
--/
/-- 337x260 img/throughhole/DSCF9274.JPG ""
--/
/-- 337x260 img/throughhole/DSCF9276.JPG ""
--/
