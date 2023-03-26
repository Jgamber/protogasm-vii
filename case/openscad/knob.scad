/*
 Simple knob for rotary encoder.
*/
$fn = 100;

height = 17;
diameter = 17;
thickness = 2;
push_btn = 6;
d_shaft_diameter = 6.5;
d_width = 1;


// Outer wall
difference() {
    // ADD
    union() {
        cylinder(height, diameter / 2, diameter / 2);
    }

    // SUBTRACT
    union() {
        translate([0, 0, 1])
        cylinder(height + 0.01, (diameter / 2) - (thickness / 2), (diameter / 2 )- (thickness / 2));
    }
}

// Inner wall
difference() {
    // ADD
    union() {
        dia = d_shaft_diameter - 1.5;
        cylinder(height, dia, dia);
    }
    
    // SUBTRACT
    union() {
        translate([0, 0, push_btn + 0.01])
        cylinder(height - push_btn, d_shaft_diameter / 2, d_shaft_diameter / 2);
    }
}
  
    

// Add shaft holder
union() {
    translate([-d_shaft_diameter / 2, d_shaft_diameter / 2 - d_width, 0])
    cube([d_shaft_diameter, d_width, height]);
}
