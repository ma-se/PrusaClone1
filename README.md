# Prusa Clones
Modified Marlin Firmware for my Prusa Clones.
Starting point for developing the Prusa Clones is Tom [TOM](https://toms3d.org/2017/02/23/building-cheapest-possible-prusa-i3-mk2/).

## Hardware changes
* printed parts
    * znutholder

## Marlin 2.0.6 changes according to hardware
* LCD Reprap Discount Smart Controller
* TMC 2130 v1.0
    * remove all jumpers under stepper driver (RAMPS 1.4)
    * Be sure tp place heat sinks on stepper driver
    * standalone mode (default for TMC 2130 v1.0)
        * check vref if standalone mode (vref = 0.8V)
    * SPI mode (remove bridge + solder)
        * if TMC 2130 v1.0 -> look https://marlinfw.org/docs/hardware/tmc_drivers.html
        * change pinout for SPI and LCD
        * enable senorless homing for x and y
            * sensorless homeing for z is yields difficulties
* i3 prusa rework extruder
    * adjusted extruder steps from 500 to 650 steps/mm

## TODO
* Investigate of stepper driver strange behaviour
* sonsorless homing for z
    * How precise are the tmc2130?

## Credits
Thanks to all the people working on this useful piece of software. Especially the marlin dev team.

 - Scott Lahteine [[@thinkyhead](https://github.com/thinkyhead)] - USA &nbsp; [Donate](http://www.thinkyhead.com/donate-to-marlin)
 - Roxanne Neufeld [[@Roxy-3D](https://github.com/Roxy-3D)] - USA
 - Chris Pepper [[@p3p](https://github.com/p3p)] - UK
 - Bob Kuhn [[@Bob-the-Kuhn](https://github.com/Bob-the-Kuhn)] - USA
 - Erik van der Zalm [[@ErikZalm](https://github.com/ErikZalm)] - Netherlands &nbsp; [![Flattr Erik](https://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=ErikZalm&url=https://github.com/MarlinFirmware/Marlin&title=Marlin&language=&tags=github&category=software)

## License
Marlin is published under the [GPL license](/LICENSE) because we believe in open development. The GPL comes with both rights and obligations. Whether you use Marlin firmware as the driver for your open or closed-source product, you must keep Marlin open, and you must provide your compatible Marlin source code to end users upon request. The most straightforward way to comply with the Marlin license is to make a fork of Marlin on Github, perform your modifications, and direct users to your modified fork.

While we can't prevent the use of this code in products (3D printers, CNC, etc.) that are closed source or crippled by a patent, we would prefer that you choose another firmware or, better yet, make your own.
