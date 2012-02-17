## Phase TWO : Post Reflow
### Assembly (through-hole)

From this point on, all components will be soldered by hand with a soldering iron. If you are using a temperature controlled soldering station please change to a bigger tip so that you obtain maximal thermal conductivity, reducing component heating through shorter soldering times.

#### MCU power supply
/-- 337x260 img/throughhole/DSCF9175.JPG ""

- **C2** *(10µF)* Polarised tantalum capacitor;
 
Make sure that it is oriented correctly as per the silkscreen, positive lead closest to the MCU. 

Note: If no markings are visible the longest lead is positive. 
--/
/-- 337x260 img/throughhole/DSCF9179.JPG "" **C2** tantalum capacitor installed.
--/

#### Main power supply
/-- 337x260 img/throughhole/DSCF9186.JPG "" Assembling through hole components on main power supply.

 1. **U4**  *(LM2937)* Square pad = pin #1
 2. **D4**  *(1N4007)* Direction dependant, orient the **K** lead (marked with a white band) to the RIGHT of the PCB.
 3. **C8**  *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad. 
 4. **C11** *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad.

Note: If you install a tantalum capacitor the wrong way around it will explode violently [in your face!](http://www.youtube.com/watch?v=CGRr9MCBo6I)
--/


**Power Supply Circuit Verification and Testing:** 
/-- 337x260 img/throughhole/DSCF9192.JPG ""**Readings taken** with no other connections made other than V supply.

- Voltage Main Supply = 4.8v (this should be 5v, further investigation is required)
- Voltage MCU = 5.06v 
- Current total = ~6mA

Both outputs are clean and interference free, as seen on oscilloscope. 

--/
/-- 337x260 img/throughhole/DSCF9190.JPG "" 
- Channel 1 trace (top) is at 2v per division = MCU Vout 
- Channel 2 trace (bottom) is at 5v per division = Main Supply Vout
--/

#### MAP on-board setup
/-- 337x260 img/reflow/IMG_0227.JPG "" On-board MAP connection.

- **U6** *(MPX4250A)* Pin 1 is identified via the square pad.

--/
/-- 337x260 img/throughhole/DSCF9208.JPG "" On-board MAP sensor PCB top side.

- Pin 1 on the pressure sensor can be identification via a small circular nick of material removed from one side the lead. 
--/
/-- 337x260 img/throughhole/DSCF9211.JPG "" MAP has been mounted from the underside of the PCB to so that the plastic casing is resting on the top side of the PCB this will remove unnecessary stresses from the pads during connection and disconnection of vacuum hose.
--/

#### AAP on-board setup
/-- 337x260 img/reflow/IMG_0250.JPG "" On-board AAP connection.

- **U5** *(MPX4100A)* Pin 1 is identified via the square pad.
--/
/-- 337x260 img/throughhole/DSCF9221.JPG "" On-board AAP sensor installed.

- Pin 1 on the pressure sensor can be identification via a small circular nick of material removed from one side the lead. (this can be seen on in the image on the lower portion of the left most pin)
--/

#### Fuel
/-- 337x260 img/reflow/IMG_0277.JPG "" Fuel FET installation.

- **Q8**  *(Mosfet_N Channel)* Square pad is pin 1(Gate) pin 2(Drain) pin 3(Source) left to right, check with your FET data sheet for specifics. 

How you choose to mount it will depend on the casing it will reside in. 
--/
/-- 337x260 img/throughhole/DSCF9193.JPG "" Installed fuel driver.
--/
/-- 337x260 img/throughhole/DSCF9196.JPG "" The FET's have been mounted as shown so that they can be bent into a vertical position at a later time. This will be dependant on the case in which the board will reside. In any situation the leads should contain 2 x 90&deg; bends to ensure that NO long term mechanical stresses and vibrations will weaken the FET leads.
--/
