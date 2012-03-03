## Step 17 : Ignition circuits

Using solder paste, place beads on all of the following component pads R230, R231, R232, R233, C124, U33, R228 or R229.
/-- 337x260 img/reflow/IMG_0366.JPG "" Install ignition XOR circuitry. 

Note: Only install one, either R228 or R229 but not both! 

- **R230** *(1K&ohm;)*
- **R231** *(1K&ohm;)*
- **R232** *(1K&ohm;)*
- **R233** *(1K&ohm;)*
- **R228** *(10K&ohm;)* ``<---`` install for non-inverted output
- **R229** *(1K&ohm;)* ``<---`` install for inverted output, as used in this guide
- **C124** *(0.1µF)* 
- **U33**  *(XOR Gate)*

Warning: If you install both R228 and R229 and you use the same value you WILL have issues and they will be VERY hard to diagnose.
--/
 
#### Ignition 1
Using solder paste, place beads on all of the following component pads R29, D20, R7, R30, R27, D10. 

/-- 337x260 img/reflow/IMG_0376.JPG "" Install ignition 1 circuit. 

- **R29** *(2K&ohm;)*
- **D20** *(LED Orange)* direction dependant, orient the **K** lead to the RIGHT of the PCB.
- **R7**  *(**MOD** 0805 jumper)*
- **R30** *(100K&ohm;)*
- **R27** *(1K&ohm;)*
- **D10** *(Schottky)* direction dependant, orient the **K** lead to the TOP of the PCB.
- **D79** *(Not used; internal in Mosfet)*
--/
/-- 337x260 img/reflow/DSCF9773.JPG "" *Installed ignition circuit.*--/

Repeat the above process for each of the following Injection circuits.

#### Ignition 2
Using solder paste, place beads on all of the following component pads R25, D19, R9, R26, R23, D12.

- **R25** *(2K&ohm;)*
- **D19** *(LED Orange)* direction dependant, orient the **K** lead to the RIGHT of the PCB.
- **R9**  *(**MOD** 0805 jumper)*
- **R26** *(100K&ohm;)*
- **R23** *(1K&ohm;)*
- **D12** *(Schottky)* direction dependant, orient the **K** lead to the TOP of the PCB.
- **D78** *(Not used; internal in Mosfet)*

#### Ignition 3
Using solder paste, place beads on all of the following component pads R21, D18, R11, R22, R19, D14.

- **R21** *(2K&ohm;)*
- **D18** *(LED Orange)* direction dependant, orient the **K** lead to the RIGHT of the PCB.
- **R11** *(**MOD** 0805 jumper)*
- **R22** *(100K&ohm;)*
- **R19** *(1K&ohm;)*
- **D14** *(Schottky)* direction dependant, orient the **K** lead to the TOP of the PCB.
- **D77** *(Not used; internal in Mosfet)*

#### Ignition 4
Using solder paste, place beads on all of the following component pads R17, D17, R13, R18, R15, D16.

- **R17** *(2K&ohm;)*
- **D17** *(LED Orange)* direction dependant, orient the **K** lead to the RIGHT of the PCB.
- **R13** *(**MOD** 0805 jumper)*
- **R18** *(100K&ohm;)*
- **R15** *(1K&ohm;)*
- **D16** *(Schottky)* direction dependant, orient the **K** lead to the TOP of the PCB.
- **D76** *(Not used; internal in Mosfet)*
