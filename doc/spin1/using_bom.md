# Bill of Materials

The BOM is broken down into sub-circuits so you, as the end user, can pick and choose which circuits are best suited to your project. For each sub-circuit there is a matching assembly section.
The primary components are compulsory to achieve a functional 'FreeEMS brain'. All other sections are optional, however, a combination of these will be necessary for an engine to run.

Open the BOM. The right hand side of each blue sub-circuit title is the page number, which corresponds to the [schematic and circuitry] that those components relate to.

### Overview with Important notes

- A large number of parts will be unpopulated, replaced with a zero ohm jumper, or solder bridge.
- The EGT circuit won't work (it has a 500&deg;C limit) without changing it's supply to 12 Volt and adding a Voltage divider. No instructions will be proved within this how-to.
- The stepper driver circuit is defunked, don't go there.
- The shut-down circuit won't work, the parts for it are not in the BOM and there will just be unpopulated pads for it on the PCB.
- The XOR based ignitor drive is too weak and should be further buffered with something that can put out a 12V signal at around 100mA.
- The Injection driver circuits are incorrectly laid out, and require a modification, which is covered in this how-to, to function. The BOM only includes parts for High-Z injectors.
- The USB circuit requires an additional component in the way of a TO92 packaged PNP transistor *UNLESS* a modified SM is used (currently not available until 30 February 2012)
- The USB connector is wrong (It's female A, which is reserved for host devices) however it is functional. Cables are hard to come by, the options are:
	- Hack a mini-USB or type B female connector instead and use an appropriate cable.
	- Build a A-A cable from two common USB cables.
	- buy male A-A cable.


#### Legend of acronyms ####
Some or all of these acronyms are used in the original schematic documentation.

- **INJ-H**: *(**Inj**ector **H**igh impedance)*
  	- If you have high impedance injectors (``>6``&ohm;), these can be driven directly from Puma with the correct mods.
  	
- **INJ-L**: *(**Inj**ector **L**ow impedance)*
  	- If you have low impedance injectors (``<6``&ohm;), there needs to be significant modifications made to use these. Not covered in this how-to documentation, sorry you're on own!
  	
- **IGN**: *(**Ign**ition)*
  	- For coil per plug operation (COP/CNP), you need one of circuit per cylinder.
  	- For wasted spark set-up, you need one of these per two cylinders.
  	- If you require operation of a distributor, you only need one.
  	- For a fuel only system you do not require any of these circuits.
	- It does **NOT** drive coils directly, don't even try.
	- For driving of external ignitors, modifications are required.

- **RPM**: *(**R**evolutions **P**er **M**inute)*
  	- Most applications require 2 inputs for 2 sensors, and installing only 1 will limit the use of the unit significantly 2 is the default and recommended.
 
- **MAP**: *(**M**anifold **A**bsolute **P**ressure)* 
	- In the BOM boosted is the default / preferred sensor and provides sufficient accuracy for all naturally aspirated vehicles, and sufficient range to cover boosted applications up to 21psi. If you are planning boost levels in excess of or close to 21psi, from a relatively large turbo, there are other options that you need to investigate.

- **AAP**: *(**A**tmospheric **A**bsloute **P**ressure)* 
  	- Used for normalisation of the MAP vs atmospheric pressure, this is considered optional. Choose this if you live in a mountainous area, or intend to visit such areas using your vehicle, or if you live in New Zealand, home of [**L``&``P**]. It's not needed for people who use their vehicles at one constant altitude (whatever that is).
- **MAF**: *(**M**ass **A**ir **F**low)* 
	- This is an alternative to the MAP sensor that is unsupported at this time, however the circuit is cheap and can be used as a general purpose analogue input also.

- **O2**: *(**O**xygen)*
  	- Only linear wide-band lambda sensors are supported at this time.

- **EGT**: *(**E**xhaust **G**as **T**emperature)* 
  	- Thermocouple driver IC, in Spin1 this circuitry is a crippled. 
	- It only supports up to 500°C temperatures as-it's currently configured.
	

### Listing of components with bad values

#### Components to be replaced with a wire jumper.

- **D1**   ``-->`` wire jumper
- **R2**   ``-->`` wire jumper to **U4**
- **R7**   ``-->`` 0805 wire jumper
- **R9**   ``-->`` 0805 wire jumper
- **R11**  ``-->`` 0805 wire jumper
- **R13**  ``-->`` 0805 wire jumper
- **R40**  ``-->`` 0805 wire jumper *(bridged - component redundant with D24 diode removed)* (need to colour red in BOM)
- **R42**  ``-->`` 0805 wire jumper *(bridged - component redundant with D26 diode removed)* (need to colour red in BOM)
- **R47**  ``-->`` 0805 wire jumper
- **R48**  ``-->`` 0805 wire jumper
- **R50**  ``-->`` 0805 wire jumper *(bridged to present a suitably low impedance output to the ADC pins)*(need to colour red in BOM)
- **R52**  ``-->`` 0805 wire jumper *(bridged to present a suitably low impedance output to the ADC pins)*(need to colour red in BOM)
- **R159** ``-->`` 0805 wire jumper
- **R163** ``-->`` 0805 wire jumper *(bridged to present a suitably low impedance output to the ADC pins)*(need to colour red in BOM)
- **R165** ``-->`` 0805 wire jumper *(bridged to present a suitably low impedance output to the ADC pins)*(missing component name)
- **R160** ``-->`` 0805 wire jumper
- **R164** ``-->`` *(bridged to present a suitably low impedance output to the ADC pins)*0805 wire jumper (need to colour red in BOM)
- **R170** ``-->`` 0805 wire jumper
- **R174** ``-->`` 0805 wire jumper *(bridged to present a suitably low impedance output to the ADC pins)*(need to colour red in BOM)

#### Components that require PCB modifications or are of significant change.

- **R251** ``-->`` 1k&ohm; pull-up mod
- **C105** ``-->`` mount over top mod, one cap will be mounted directly on top of the other. *(need to id components for best arrangement)*
- **R176** ``-->`` possible 1M&ohm; or 10M&ohm; mod *to be confirmed*
- **R158** ``-->`` 10nF 0805 package mod will fit on current resistor pads
- **C108** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.	
- **C110** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C112** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C114** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C116** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C118** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C120** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **C122** ``-->`` 100k&ohm; resistor is used in the capacitors place this will be modified to ground as a pull-down.
- **RMODA** ``-->`` 100k&ohm; pull-down resistors MF12 package type, these resistors specifically will fit through the very small via's on puma and will make for easier and stronger soldering to via pads.
- **RMODB**  ``-->`` 200&ohm; **2 Watt** pull-up resistor.
- **USB-hack** ``-->`` Required to make USB operate at this time with current Serial Monitor firmware.
- **SM-UPhack** ``-->`` 10k&ohm; pull-up mod, required to make sure that the **SM** pin always has a known state (Held high until switched/jumpered low).

#### Components that will NOT be populated onto puma PCB.

- *Shutdown circuitry: This circuit design is flawed and useable the following components should be neglected. This circuit is bypassed with the **D1** jumper.*	
	- **Q19**  ``-->`` do not use
	- **Q18**  ``-->`` do not use	
	- **R227** ``-->`` do not use	
	- **R226** ``-->`` do not use	
	- **D3**   ``-->`` Not used no connection 
	- **R133** ``-->`` Not used no connection *(negatively impact the signal fidelity)*
- *These components are not used when operating an on board MAP (non-OEM):*	
	- **D31**  ``-->`` Not used no connection 
	- **D32**  ``-->`` Not used no connection 
	- **C29**  ``-->`` Not used no connection 
	- **C19**  ``-->`` Not used no connection 
- *These components are not used when operating an on board AAP (non-OEM):*	
	- **D33**  ``-->`` Not used no connection 
	- **D34**  ``-->`` Not used no connection
	- **C30**  ``-->`` Not used no connection 
	- **D24**  ``-->`` Not used no connection *(These diodes are protection on an internal circuit which is pointless, instead they compromise the signal quality)*
	- **D26**  ``-->`` Not used no connection *(These diodes are protection on an internal circuit which is pointless, instead they compromise the signal quality)*
	- **R68**  ``-->`` Not used no connection
	- **C37**  ``-->`` Not used no connection 
	- **C73**  ``-->`` Not used no connection 
	- **C86**  ``-->`` Not used no connection
	- **R148** ``-->`` Not used no connection *(negatively impact the signal fidelity)* 
	- **C79**  ``-->`` Not used no connection
	- **R154** ``-->`` Not used no connection *(negatively impact the signal fidelity)*
	- **C92**  ``-->`` Not used no connection
	- **C76**  ``-->`` Not used no connection
	- **R151** ``-->`` Not used no connection *(negatively impact the signal fidelity)*
	- **C85**  ``-->`` Not used no connection
- *Injection circuitry diodes, not used to date (07 December 2011):*	
	- **D84** ``-->`` do not use
	- **D85** ``-->`` do not use
	- **D86** ``-->`` do not use
	- **D87** ``-->`` do not use
	- **D88** ``-->`` do not use
	- **D89** ``-->`` do not use
	- **D90** ``-->`` do not use
	- **D91** ``-->`` do not use
	- **D92** ``-->`` do not use
- *Ignition circuitry: all components listed are unused:*
	- **D79** ``-->`` not required internal to mosfet
	- **R7**  ``-->`` do not use
	- **D10** ``-->`` do not use
	- **D78** ``-->`` not required internal to mosfet
	- **R9**  ``-->`` do not use
	- **D12** ``-->`` do not use
	- **R11** ``-->`` not required internal to mosfet 
	- **D14** ``-->`` do not use
	- **D77** ``-->`` do not use
	- **R13** ``-->`` not required internal to mosfet 
	- **D16** ``-->`` do not use
	- **D76** ``-->`` do not use

#### Straight component value changes (only new correct value shown).

- **R177** ``-->`` 10K&ohm;
- **R178** ``-->`` 10K&ohm;
- **R179** ``-->`` 10K&ohm;
- **R181** ``-->`` 10K&ohm;
- **R180** ``-->`` 10K&ohm;
- **C95**  ``-->`` 0.22µF
- **C94**  ``-->`` 680pF
- **C93**  ``-->`` 6.8nF
- **R175** ``-->`` 3.3K&ohm;
- **C96**  ``-->`` 22pF *or* 15pF *or* 33pF
- **C97**  ``-->`` 22pF *or* 15pF *or* 33pF
- **C98**  ``-->`` 0.22µF
- **C99**  ``-->`` 0.22µF
- **C100** ``-->`` 0.22µF
- **C101** ``-->`` 0.22µF
- **C102** ``-->`` 0.22µF
- **C11**  ``-->`` 10µF
- **R105** ``-->`` 3.9K&ohm; this value has been adjusted to obtain maximum ADC accuracy 
- **R106** ``-->`` 1K&ohm; this value has been adjusted to obtain maximum ADC accuracy 
- *Only changed to these following values when using off board MAP (OEM):*	
	- **D31**  ``-->`` Schottky diode
	- **D32**  ``-->`` Schottky diode
	- **C29**  ``-->`` 0.1µF
- *Only changed to these following values when using off board AAP (OEM):*	
	- **D33** ``-->`` Schottky diode
	- **D34** ``-->`` Schottky diode
	- **C30** ``-->`` 0.1µF
	- **R212** ``-->`` 10K&ohm; *(must be at least 1/4 Watt, preferably 1/2 Watt. As such it could be a better idea to put them in the loom and bridge this location)*
	- **R213** ``-->`` 10K&ohm; *(must be at least 1/4 Watt, preferably 1/2 Watt. As such it could be a better idea to put them in the loom and bridge this location)*
	- **R39**  ``-->`` 1K&ohm;
	- **R215** ``-->`` 10K&ohm; *(must be 1/4 Watt, As such it could be a better idea to put them in the loom and bridge this location)*
	- **R216** ``-->`` 10K&ohm; *(must be 1/4 Watt, As such it could be a better idea to put them in the loom and bridge this location)*
	- **R41**  ``-->`` 1K&ohm;
	- **D60**  ``-->`` Schottky diode
	- **D61**  ``-->`` Schottky diode
	- **R147** ``-->`` 2.4K&ohm;
	- **D72**  ``-->`` Schottky diode
	- **D73**  ``-->`` Schottky diode
	- **R153** ``-->`` 2.4K&ohm;
	- **D58**  ``-->`` Schottky diode
	- **D59**  ``-->`` Schottky
	- **R150** ``-->`` 2.4K&ohm;
	- **D63**  ``-->`` Schottky diode
	- **R252** ``-->`` 2.4K&ohm;	
	- **R253** ``-->`` 2.4K&ohm;
	- **R254** ``-->`` 2.4K&ohm;
	- **R255** ``-->`` 2.4K&ohm;
	- **R256** ``-->`` 2.4K&ohm;
	- **R257** ``-->`` 2.4K&ohm;
	- **R258** ``-->`` 2.4K&ohm;
	- **R259** ``-->`` 2.4K&ohm;
	- **R30**  ``-->`` 100K&ohm; *(this value has been increased to minimise voltage divider effects that have formed)*
	- **R27**  ``-->`` 1K&ohm;
	- **R26**  ``-->`` 100K&ohm; *(this value has been increased to minimise voltage divider effects that have formed)*
	- **R23**  ``-->`` 1K&ohm;
	- **R22**  ``-->`` 100K&ohm; *(this value has been increased to minimise voltage divider effects that have formed)*
	- **R19**  ``-->`` 1K&ohm;
	- **R18**  ``-->`` 100K&ohm; *(this value has been increased to minimise voltage divider effects that have formed)*
	- **R15**  ``-->`` 1K&ohm;


#### Note: 
- PIP-3104 are listed for protected logic level FETs - DO NOT USE THEM, they are NOT robust. VNP10N07 (or 5, 20, etc Amp variants) are suitable replacements, there are many others.
- No electrolytic caps should be installed. In their place 10µF TH tantalum’s can optionally be installed.

### BOM Configuration Overview

Configuring the BOM has been the tricky part. A spread sheet has been created that is tabbed with the various different sub circuits contained on the Puma PCB. The spread sheet can also be viewed as a [web BOM] . Alternatively the BOM can be [downloaded](http://puma.freeems.org/preston.bom/PumaBom-WithMods-Element14.xlsx) as an Excel spreadsheet that can be opened also in OpenOffice.

*Git users download the [BOM here].*


[CONTINUE](#assembly_overview)
