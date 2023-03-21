# Protogasm VII
Version two includes code refactoring, bug fixes, and I may fix up the STL models.


Software and hardware for Arduino-based orgasm prediction / detection ... on protoboard!

The nogasm is an amazing toy.  I wanted to make something easier to hack and more accessible to the homebuilder.  Fortunately headcrabned was kind enough to open source the whole thing.

I ported it the Arduino Uno, and hacked around on perfboard until I had it working.  It works great and only requires a handful of readily available through-hole components.

Some aspects have been simplified compared to the original electronics:
* The DIP switches have been eliminated.  Options are configured in the source instead.
* The RGB backlit rotary encoder has been replaced with a more common unlit one.  The mode is still visible on the LED ring.
* It has more LEDs!  NeoPixel Rings with 24 LEDs are the right size for the project.

## Getting started

* [RTFM](User%20Guide.pdf)

* [Build the control board](pcb/)
* Flash the Arduino with the [Protogasm VII Code](code/protogasm_vii.ino)
* [Print the case](case/)
* [Build the vibrator](vibrator/)
* *TODO* Setup the plug

#### Fine print
This work is licensed under a Creative Commons Attribution-NonCommercial 4.0 International Licence, available at http://creativecommons.org/licenses/by-nc/4.0/.
