## Temporary Port T Injection mod
This mod is necessary for the PUMA board to work on current FreeEMS Vanilla code.
It requires the following components

- 1 x approximately 100mm lengths of wire, small enough to fit through the PUMA pcb vias.
- 1 x short wire jumpers.
- 1 x 1k&ohm; through hole resistors.

*(one to six sets will be needed, only 2 port T mods are described in this how-to)*

/-- 337x260 img/throughhole/DSCF9321.JPG "" Install one of the 1k&ohm; resistors between pad 8 of U28, and the pad K of D91.
 
Install the second 1k&ohm; resistor between pad 8 of U27, and the pad K of D90.
--/
/-- 337x260 img/throughhole/DSCF9322.JPG "" Place a wire link between the right hand pad of R211 and the via on the right side of **G** in **GND** on P71 header shown right.

Place a second wire link between the right hand pad of R208 and the via on the left side of **G** in **GND** on P71 header shown right.

Placed a wire jumper between pads 4 and 5 on U28(not installed), this is a ground wire so I have opted to have non insulated. *Snipped off though-hole component leads work a treat, for this.*

Place second wire jumper between pads 4 and 5 on U27(also not installed), this is a ground wire so I have opted to use non-insulated wire.
--/
