## USB PNP mod

/-- 337x260 img/throughhole/USBmod.jpg ""  Schematic of what is trying to be achieved with this mod, the pnp transistor and its connection points.  --/

/-- 337x260 img/throughhole/DSCF9839.JPG "" 

- Holding the PNP transistor with its legs pointing up and the flat side facing you, the legs are named left to right **Emitter, Base, Collector**.
- This mod is done on the under side of the PCB.
- Bend the *emitter* leg 90&deg; down (away from the flat face).
- Bend the *collector* leg 90&deg; out to the side.
- Place the emitter leg of the transistor through the second via directly below the words "spin 1" on the under side of the PCB, and solder. It maybe necessary to scratch the surface of the via pad  clean with a razor blade.
- Connect the *base* leg directly to the 5v pin of the USB connector, this is the top connector pin when viewing the PCB from the bottom side with the puma text up the correct way. Make a connection between this *base* leg and the via between the USB LEDs.This is the via that was previously connected to the ground plain that we drilled out in the first stages of this how-to. A small wire will be necessary that can be feed down the via and soldered to one of the resistors on the opposite side of the PCB.
- Connect the *collector* leg to a puma 5volt rail, I have opted to use 5v from the BDM header pin.

USBmod complete!
--/

