## Spin1-specific modifications

You'll need to perform these modifications to the PCB board.

/-- 128x128 img/placeholder_image.png "Close up view of cutting this trace"
Cutting the traces under the CPU to prevent it burning on first power up.
--/

/-- 128x128 img/placeholder_image.png "Close up view of cutting this trace"
Jumpering the power across the unused power enable circuit.
--/

/-- 128x128 img/placeholder_image.png "Jumpers and cuts, etc."
The FTDI chip is powered from the Puma supply and should be bus powered.
--/

/-- 128x128 img/placeholder_image.png "Transistor in place"
Only the Serial Monitor will run without the PNP modification to the serial line, firmware will not run without this.
--/

/-- 128x128 img/placeholder_image.png "Close up view of cutting this trace"
Cutting the traces around the injector drivers to allow wrong pin out drivers to be used.
--/

/-- 128x128 img/placeholder_image.png "Close up view of cutting this trace"
Cutting the traces around the ignitor drives to allow stronger drivers to be added.
--/

/-- 128x128 img/placeholder_image.png "Close up view of cutting this trace"
Cutting this
--/

/-- 128x128 img/placeholder_image.png "Close-up view of jumpering that connection"
Jumpering that
--/
