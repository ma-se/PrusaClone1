#  Modified Marlin Firmware for Prusa Clone 1

## Changes to Marlin 2.0.6
* TMC 2130 v1.0
    * stealthchop 1 spreadcycle 0
    * remove all jumpers under stepper driver (RAMPS 1.4)
        * standalone mode (bridge)
            * #define X_DRIVER_TYPE  TMC2160_STANDALONE // done 
        * SPI mode (bridge^-1)
            *   #define MONITOR_DRIVER_STATUS
            * if v1.0 -> look https://discuss.toms3d.org/hardware-f6/tmc2130-v1-0-question-t1057.html
    * change pinout for SPI and LCD
        * #define TMC_USE_SW_SPI
          #define TMC_SW_MOSI       44
          #define TMC_SW_MISO       42
          #define TMC_SW_SCK        40
* LCD Reprap Discount Smart Controller
    * #define SDSUPPORT
    * #define REPRAP_DISCOUNT_SMART_CONTROLLER

## Credits

Much love to the Marlin dev team which consists of:

 - Scott Lahteine [[@thinkyhead](https://github.com/thinkyhead)] - USA &nbsp; [Donate](http://www.thinkyhead.com/donate-to-marlin)
 - Roxanne Neufeld [[@Roxy-3D](https://github.com/Roxy-3D)] - USA
 - Chris Pepper [[@p3p](https://github.com/p3p)] - UK
 - Bob Kuhn [[@Bob-the-Kuhn](https://github.com/Bob-the-Kuhn)] - USA
 - Erik van der Zalm [[@ErikZalm](https://github.com/ErikZalm)] - Netherlands &nbsp; [![Flattr Erik](https://api.flattr.com/button/flattr-badge-large.png)](https://flattr.com/submit/auto?user_id=ErikZalm&url=https://github.com/MarlinFirmware/Marlin&title=Marlin&language=&tags=github&category=software)

## License

Marlin is published under the [GPL license](/LICENSE) because we believe in open development. The GPL comes with both rights and obligations. Whether you use Marlin firmware as the driver for your open or closed-source product, you must keep Marlin open, and you must provide your compatible Marlin source code to end users upon request. The most straightforward way to comply with the Marlin license is to make a fork of Marlin on Github, perform your modifications, and direct users to your modified fork.

While we can't prevent the use of this code in products (3D printers, CNC, etc.) that are closed source or crippled by a patent, we would prefer that you choose another firmware or, better yet, make your own.
