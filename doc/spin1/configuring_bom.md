## Configuring the BOM

### Important notes

- The EGT circuit doesn't work (it has a 500&deg;C limit).
- The USB connector is wrong (It's female A, which is reserved for host devices).
  - Don't buy the female A connector nor the male A-A cable.
  - Hack a mini-usb or type B female connector instead and use an appropriate cable.
- The shutdown circuit won't work, the parts for it are not in the BOM and there will just be unpopulated pads for it on the PCB.


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
  - If you have High-Z injectors, enter the a number equal to the amount of injectors in your engine.
  - In this example, we have four High-Z injectors.

- **INJ-L**: Amount of Low-Z injectors.
  - If you have Low-Z injectors, enter the a number equal to the amount of injectors in your engine.
  - In this example, it's 0 because there are four High-Z injectors conifigured.

- **IGN**: Amount of Ignition drivers.
  - For a 4-cylinder engine with wasted spark, 2 is fine.
  - If you plan to use your distributor, 1 is fine.
  - Enter 0, if you are not planning to drive your ignition with FreeEMS.

- **RPM**: Amount of RPM inputs.
  - Enter 1, if you are going to use a single trigger wheel. Fine for bank and semi-sequential injection and wasted spark.
  - Enter 1, if you are going to use just the hall signal from your distributor. Will not allow sequential anything nor ignition.
  - Enter 2, if you are going to use both crank and cam signals; Required for sequential injection and sequential injection.

- **MAPB**: Boosted MAP sensor and its input circuit.
  - You don't need this, unless you are going to read boost levels from a supercharger or turbo. It includes an MPX4250AP sensor.

- **MAPN**: Regular vacuum MAP sensor and its input circuit.
  - You'll want this to read the vacuum levels from your inlet manifold. It includes an MPX4100AP sensor.

- **AAP**: Ambient air pressure sensor and its input circuit.
  - You'll want this in most cases. It's used for normalization of the MAP vs atmospheric pressure. It includes an MPX4100A sensor.

- **MAF**: Air mass flow sensor circuit?
  - This is an alternative to the MAP sensor. It usually doesn't make sense to use both.

- **GPO**: General Purpose output circuits.
  - You'll probably not need these.

- **O2**: Lambda sensor input circuits.
  - Enter 1
  - Only wide-band lambdas are supported at this time.

- **EGT**: Thermocouple driver
  - You'll probably not need this.

- **TCPL**: Thermistors
  - In most cases, you'll use two: One for the inlet air temperature, another for the coolant temperature. This includes the filtering circuitry, not the sensors.

- **AN**: General purpose analog inputs
  - Spin 1 doesn't need this.

- **STP**: Stepper driver
  - Untested, and no firmware to drive it yet.

- **ANP**: Analog protection circuits
  - Max-out; Protection diodes (Schottky, SOD123 package). This way the board is protected against voltage spikes and other
harmful stuff.

- **DGP**: Digital protection circuits
  - Max-out; Protection zeners (5v1, SOD123 package). You'll probably not need this.

