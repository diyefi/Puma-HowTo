# Spin1 Specific PCB Modifications

You'll need to perform these modifications to the PCB board in prepare it for assembly.

#### Sub MCU track cut 
/-- 337x260 img/mods/MCU_VDD_traces.png "Close up view of cutting this trace"
- Cutting the traces under the CPU to prevent it burning on first power up.
--/
/-- 337x260 img/mods/IMG_0131.JPG "Before cuts have been made" How to make the sub mcu mod:

- Center punch the two tracks in the green locations shown above.
- Take the 1.5 mm drill bit and carefully ream out the track, this done my twisting the drill bit between your fingers while applying moderate pressure. The depth only needs to be enough to remove all the copper for a clean break.
- Now use the 3 mm drill bit to further widen the cut.
- Clean the cut out.
- Use the super glue to fill the newly made cut, this seal and insulate any exposed copper.
--/
/-- 337x260 img/mods/IMG_0136.JPG "Competed sub mcu mod"
- The finishing PCB modification, should look like this.
--/

#### FTDI (USB) power correction
/-- 337x260 img/mods/USB_power_hack.png "USB repower mod"
- The FTDI chip is currently powered from the Puma power supply and should be powered via the USB bus. This mod will repower the FTDI chip from the USB port and fix the USB drop out issue when performing a power cycle.
--/
/-- 337x260 img/mods/IMG_0142.JPG "Top side before"
- The USB mod is broken down into three parts *top side USB mod*, *bottom side USB mod A* and *bottom side USB mod B*.
--/
/-- 337x260 img/mods/IMG_0157.JPG "Top side USB mod"

- Center punch the track in the green location on the right of **U20** shown in USB repower mod above.
- Take the 1.5 mm drill bit and carefully ream out the track.
- Now use the 3 mm drill bit to further widen the cut.
- Clean the cut out.
- Use the super glue to fill the newly made cut, this seal and insulate any exposed copper. 
--/
/-- 337x260 img/mods/IMG_0148.JPG "Bottom side before"
- Bottom side of PCB below USB port with **J1** facing to the right.
--/
/-- 337x260 img/mods/IMG_0154.JPG "Bottom side USB mod A" 
**Bottom side USB mod A**

- Take the 1.5 mm drill bit and carefully ream out the via shown in yellow. The idea here is to disconnect it from the ground plan, while maintaining as much of the central copper of the via to solder to and complete the mod.
- Now use the 3 mm drill bit to further widen the via from the ground plan, reremebering to keep it shallow.
- Clean the cut out.
--/

/-- 337x260 img/mods/IMG_0169.JPG "Completed bottom side USB mod"
**Bottom side USB mod B**

- Center punch the track in the green location toward the top of the image.
- Take the 1.5 mm drill bit and carefully ream out the track.
- Now use the 3 mm drill bit to further widen the cut.
- Clean the cut out.
- Use the super glue to fill the newly made cut, this seal and insulate any exposed copper.

Completed bottom side mods when viewed from left to right of the PCB.
--/

