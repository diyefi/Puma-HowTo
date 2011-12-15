# Spin1 Specific PCB Modifications

You'll need to perform these modifications to the PCB board in prepare it for assembly.

#### Sub MCU track cut 
/-- 337x260 img/MCU_VDD_traces.png "Close up view of cutting this trace"
- Cutting the traces under the CPU to prevent it burning on first power up.
--/

#### FTDI (USB) power correction
/-- 337x260 img/USB_power_hack.png "Jumpers and cuts, etc."
- The FTDI chip is powered from the Puma supply and should be bus powered.
--/

#### P&H MOD
/-- 337x260 img/P&H_hack.png "P&H hack bla bla"
- Only the Serial Monitor will run without the PNP modification to the serial line, firmware will not run without this.
--/

