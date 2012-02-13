#### INJECTION

Hold the VNP10N07 with leads down and writing facing the front. The pin out and lead functions are as follows: 

- **Left lead = Gate (pin 1)**
- **Center lead = Drain (pin 2)**
- **Right lead = Source (pin 3)**

(if you are not using these FET's please refer to your component data sheet)

/-- 337x260 img/reflow/IMG_0362.JPG "" Injection FET connection.

**MOD** These will be installed reverse mounted, as seen in the image left. This is being done so that the following injection mod can be made cleanly with current PCB tracing. 

**Pin 3** mounts to the square pad.
Repeat the process with as many FET's as you require up to a maximum of 8.

Note: Although it is recommended it is in no way compulsory to mount the FET's in this way. If you choose to mount the FET's any other way you will need to devise your own version of the injector mod.
--/

/-- 337x260 img/throughhole/DSCF9300.JPG "" 

**injection 1**
- **Q15**  *(VNP10N07)*

**injection 2**
- **Q14**  *(VNP10N07)*

**injection 3**
- **Q13**  *(VNP10N07)*

**injection 4**
- **Q12**  *(VNP10N07)*

**injection 5**
- **Q11**  *(VNP10N07)*

**injection 6**
- **Q10**  *(VNP10N07)*

**injection 7**
- **Q16**  *(VNP10N07)*

**injection 8**
- **Q17**  *(VNP10N07)*
--/

#### INJECTION Mod

#### *Important!  :  before this mod is made check for SeanK's Xgate functionality within the FreeEMS firmware. If Xgate is not yet supported please perform the [PORT B INJECTION MOD](#temp_portB_mod) before this injection mod.*

Preform this 3 step process for each injector that will be used. The Mod should only be applied to the following part numbers Q10, Q11, Q12, Q13, Q14, Q15, Q16, Q17. These mods are made over the location (silk screen) of U28, U27, U21, U22, U23, U24, U25, U26.

This following description is specifically for the Q17 FET install (U28 injection mod).
/-- 337x260 img/throughhole/DSCF9284.JPG "" **Ground jumper mod :** 

Placed a wire jumper between pads 4 and 5 on U28(not installed), this is a ground wire so I have opted to have non insulated. *Snipped off though hole component leads work a treat, for this.* 
--/
/-- 337x260 img/throughhole/DSCF9286.JPG "" **LED mod :**
 
Place a 3k&ohm; resistor between **BAT PWR** and pad 3 on U28.
--/
/-- 337x260 img/throughhole/DSCF9290.JPG "" **Gate signal jumper :** 

Place a wire jumper between pad 1 of U28 and the pad K of D91 (Jumper installed shown in yellow). 
--/
/-- 337x260 img/throughhole/DSCF9309.JPG "" Bottom side PCB : Installed injection circuits without the temporary PORT B mod. 
--/
/-- 337x260 img/throughhole/DSCF9304.JPG "" Top side PCB : Installed injection circuits without the temporary PORT B mod. 
--/
