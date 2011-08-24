## Configuring the BOM

### Important notes

- This guide is incomplete, ordering is not recommended without checking each sub-circuit that you need and confirming that it looks sensible in conjunction with the changes listed in this document.
- A large number of parts should be left unpopulated or replaced with a zero ohm link or solder bridge.
- The EGT circuit won't work (it has a 500&deg;C limit) without changing it's supply to 12 Volt and adding a Voltage divider, these hacks are untested.
- The USB connector is wrong (It's female A, which is reserved for host devices).
  - Don't buy the female A connector nor the male A-A cable.
  - Hack a mini-usb or type B female connector instead and use an appropriate cable.
- The shutdown circuit won't work, the parts for it are not in the BOM and there will just be unpopulated pads for it on the PCB.
- The USB circuit requires an additional component in the way of a to92 packaged PNP transistor UNLESS a modified SM is used (currently not available @ 24 August 2011)
- The XOR based ignitor drive is too weak and should be further buffered with something that can put out a 12v signal at around 100mA, this will need to be prototyped.
- The fuel injector drives have the wrong pin out for most driver transistors and FETs and as such require hacking to make work in either low or high z configuration.

### Listing of parts to NOT install

- D24 and D26 should be left unpopulated as they compromise the signal quality and are not required for protection on an internal circuit.
- R40, R42, should be bridged as they are redundant with the above diodes removed.
- R133, R135, R137, R148, R151, R157, R154, should be left unpopulated as they will impact the signal fidelity.
- R212, R213, R215 and R216 should be 1/4w power handling. It is unreliable and difficult to fit TH 1/4w resistors in these locations. As such it could be a better idea to put them in the loom instead and bridge these locations. 
- R50, R51, R52, R134, R163, R164, R165, R166, R171, R172, R173, R174, R187 should be bridged to present a suitably low impedance output to the ADC pins
- No electrolytic caps should be installed. In their place 10uF TH tantalums can optionally be installed.
- D1 and D3 should be bridged as the regulators have built in reverse protection.

### Listing of parts with bad values

- R106 should be 1k and R105 should be 3.9k for maximum ADC accuracy, though the supplied values that are 10x higher do seem to work OK.
- PIP-3104 are listed for protected logic level FETs - DO NOT USE THEM, they are NOT robust. VNP10N07 (or 5, 20, etc Amp variants) are suitable replacements, there are many others.
- R136, R138, R149 and R158 should be reduced to 1k or less for maximal accuracy of ADC readings.
- R18, R22, R26 and R30 should be 100k not 10k to minimise the voltage divider that is formed.

### Overview

Configuring the BOM is a tricky part. We don't yet have full documentation about what's actually needed. At this time, you may try to figure it out mostly on your own.

[Download the BOM here.](https://github.com/nitrousnrg/puma/blob/master/BOMs/order_BOM.xls?raw=true)

The BOM is an Excel spreadsheet and it works imported into OpenOffice too.

### Setting up the parameters

/-- 362x229 img/spin1/bom_screenshot1.png "Screen shot of the configurable area of the BOM"

The first sheet in the spreadsheet (FreeEMS_setup) contains the configurable outputs and sensors.

--/
#### Legend of acronyms

- **INJ-H**: Amount of High-Z injectors.
  - If you have High-Z injectors, enter the a number equal to the amount of injectors that your engine has.
  - In this example, we have four High-Z injectors.

- **INJ-L**: Amount of Low-Z injectors.
  - If you have Low-Z injectors, enter the a number equal to the amount of injectors that your engine has.
  - In this example, it's 0 because there are four High-Z injectors conifigured.

- **IGN**: Amount of Ignition drivers.
  - For coil per plug operation (COP/CNP) you need one of these per cylinder.
  - For wasted spark you need one of these per two cylinders.
  - If you plan to use your distributor, you only need one.
  - Enter 0, if you are not planning to drive your ignition with FreeEMS.

- **RPM**: Amount of RPM inputs.
  - Most people should install 2 as most input configurations require 2, and installing only 1 will limit the use of the unit significantly.
  - If you know what your RPM/Position sensor configuration is, know that it only uses 1 input, are 100% certain that that will not change, and want to save a little money, choose 1.

- **MAPB**: Boosted MAP sensor and its input circuit.
  - This is the default and provides sufficient accuracy for all naturally aspirated vehicles and boosted vehicles upto 21psi. If you are planning boost levels in excess of or close to 21psi, from a relatively large turbo, there are other options that you need to investigate. It includes an MPX4250AP sensor.

- **MAPN**: Regular vacuum MAP sensor and its input circuit.
  - Don't choose this unless you're 100% certain that your Puma will never be connected to a boosted engine. The only advantage that this has over the default is slightly better accuracy. It includes an MPX4100AP sensor.

- **AAP**: Atmospheric Absolute Pressure sensor and its input circuit.
  - This is considered optional in most cases. Choose this if you live in a mountainous area, or intend to visit such areas using your vehicle. It's not needed for people who use their vehicles at one constant altitude (whatever that is). It's used for normalization of the MAP vs atmospheric pressure. It includes an MPX4100A sensor.

- **MAF**: Mass Air Flow sensor conditioning circuit
  - This is an alternative to the MAP sensor that is unsupported at this time, however the circuit is cheap and can be used for any other analogue input too.

- **GPO**: General Purpose output circuits.
  - You'll probably not need these.

- **O2**: Lambda sensor input circuits.
  - Enter 1
  - Only linear wide-band lambda sensors are supported at this time.

- **EGT**: Thermocouple driver IC
  - In Spin1, this one is a bit crippled.
    - It only supports up to 500°C temperatures as-it's currently configured.
    - The EGT would support up to 1200°C, if it would be supplied with 12V instead of 5V
  - You'll not use this, so enter 0

- **TCPL**: Thermistor filtering circuits
  - In most cases, you'll use two:
    - One for the inlet air temperature
    - Another for the coolant temperature.

- **AN**: General purpose analog inputs
  - Spin 1 doesn't need this.

- **STP**: Stepper driver
  - Untested, and no firmware to drive it yet.

- **ANP**: Analog protection circuits
  - Max-out; Protection diodes (Schottky, SOD123 package). This way the board is protected against voltage spikes and other
harmful stuff.

- **DGP**: Digital protection circuits
  - Protection zeners (5v1, SOD123 package).
  - These have known issues in the Spin1 hardware revision, so enter 0

