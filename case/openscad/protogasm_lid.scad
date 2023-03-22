//  ----------------------------------------------------------------------- LICENSE
//  This "3D Printed Case for Arduino Uno, Leonardo" by Zygmunt Wojcik is licensed
//  under the Creative Commons Attribution-ShareAlike 3.0 Unported License.
//  To view a copy of this license, visit
//  http://creativecommons.org/licenses/by-sa/3.0/
//  or send a letter to Creative Commons, PO Box 1866, Mountain View, CA 94042, USA.


include <protogasm_param.scad>


extra_headroom = 11.36;

knob_position = [-1.27+7,5,0];

//------------------------------------------------------------------------- MAIN BLOCK
difference() {
	// ADD
	union() {
		// Add Base
		linear_extrude(height = height/2 + blockLockSize + extra_headroom, convexity = 10)
		minkowski() {
			square([width, wide], center = true);
			circle(roundR-1);
		}
	}
																	// SUBSTRACT
	union() {
		// lift floor height
		translate([0, 0, floorHeight]) {
			// Cut base inner hole
			linear_extrude(height = height + extra_headroom, convexity = 10)
			minkowski() {
				square([width, wide], center = true);
				circle(roundR - pillarSize);
			}

			// Cut block lock
			translate([0, 0, height/2 - blockLockSize + extra_headroom])
			linear_extrude(height = height + extra_headroom, convexity = 10)
			minkowski() {
				square([width, wide], center = true);
				circle(roundR - layerWidth*3);
			}

			// Cut x panels 
			for (i = [0 : 180 : 180])
			rotate([0, 0, i])
			translate([width/2 + roundR - pillarSize/2 - layerWidth*7, 0, 0]) {
				// Cut X panel hole
				translate([0, 0, (height+extra_headroom)/2 ])
				cube([pillarSize, sidePanelXWidth, height + extra_headroom], center=true);			
			}

			// Cut Y panels 
			for (i = [90 : 180 : 270])
			rotate([0, 0, i])
			translate([wide/2 + roundR - pillarSize/2 - layerWidth*7, 0, 0]) {
				// Cut Y panel hole
				translate([0, 0, (height+extra_headroom)/2])
				cube([pillarSize, sidePanelYWidth, height+extra_headroom], center=true);
			}
			
            // Cut access holes
			// Rotate due to panel upside down
			mirror([0, 1 , 0])
            
			// translate to pcb position
			translate([-pcbPositionX-7, -pcbWide/2-5, height - pcbPositionZ -pcbHeight - 4 + extra_headroom]) {
                // Cut pressure sensor hole
				translate([0, usbHolePosition - usbWide, -(usbHeight-10)/2])
				cube([10, usbWide-3, usbHeight], center=true);
			}
		}

		//Knob hole
		translate(knob_position)
		cylinder(h=20, r = 8/2, center=true);
	}
}
