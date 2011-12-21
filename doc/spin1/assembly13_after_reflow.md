## Assembly (through hole)

From this point on all componenets will be soldered by hand with a soldering iron.

#### MCU power supply
/-- 337x260 img/placeholder_image.png "soldering through hole"

**C2** *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead closest to the MCU.
--/

#### Main power supply ####
/-- 337x260 img/placeholder_image.png "" Fuel circuit soldering through hole

 1. **U4**  *(LM2937)* Square pad = pin #1
 2. **D4**  *(1N4007)* Direction dependant, orient the **K** lead (marked with a white band) to the RIGHT of the PCB.
 3. **C8**  *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad. 
 4. **C11** *(10µF)* Polarised tantalum capacitor; Make sure that it is oriented correctly as per the silkscreen, positive lead soldered to square pad.
--/

**Circuit verification and testing Step XX :** 
/-- 337x260 img/placeholder_image.png "show test procedures, results" Testing correct function and install of MCU power supply.
--/

#### MAP On-board setup ####
/-- 337x260 img/reflow/IMG_0227.JPG "show on-board mounting MAP" on-board MAP connection.

- **U6** *(MPX4250A)*
--/

#### AAP On-board setup ####
/-- 337x260 img/reflow/IMG_0250.JPG "show on-board mounting AAP" on-board AAP connection.

- **U5** *(MPX4100A)*
--/

#### Fuel ####
/-- 337x260 img/reflow/IMG_0277.JPG "Show fuel fet installed" Fuel Fet connection.
- **Q8**  *(Mosfet_N Channel)* Square pad is pin 1(Gate) pin 2(Drain) pin 3(Source) left to right, check with your FET data sheet for specifics. How you choose to mount it will depend on the casing it will reside in. 
--/

#### INJECTION #### 
/-- 337x260 img/reflow/IMG_0362.JPG "show FET mounting" injection FET connection.

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

#### IGNITION #### 
/-- 337x260 img/placeholder_image.png "show FET mounting" ignition FET connection.

- **Resistor Mod 100k pulldown** todo	
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

