# Circuit Assembly

protogasm_layout.png shows how I build my boards - the wire goes into the hole
next to a component's leg and is then bent down to meet the leg.

Cut the mounting tabs off of the rotary encoder and install it at the center of
the board.  The center pin should point at Arduino pin 12.  Squeeze the pins
together slightly so they go into columns 8 and 13.

The trimpot goes with its center leg directly connected to the AREF hole.

The MOSFET goes on the back of the board on column 12.  The center pin should be
aligned with VIN.

The pressure sensor is installed with the pins bent the wrong way.  If you
install it the right way there isn't enough clearance for the hose barb.  Pin 1
(notched) goes in column 9, two holes up from the SCL pin.  The mounting ears
need to be removed to provide clearance for the USB and power connectors on the
Arduino.  I simply clipped them off with wire cutters.

Install the remaining passives and wiring.

Break away some pin headers to the correct lengths and install them onto the shield (perfboard)
with the short end poking above. Mount it into the Arduino, and solder the top of each pin.

The Neopixel Ring is installed/elevated on three .100 breakaway header pins for PWR, GND,
and OUT.  Do not install a pin header on IN because it will short against the USB port. (The perfboard
touches the metal on the Arduino's USB port.) I soldered a wire to IN and have the other end simply fit
into pin 10, so I can still remove the ring when needed.
The pins need to tilt slightly so place the Neopixel Ring on them to hold them
in the correct orientation before soldering them to the board.

The power out to the motor is taken from either side of the diode.  I made a
short cable with a female power jack DC connector and soldered it to the pins.
Then on the other end of the vibrator a male power jack adapter.
