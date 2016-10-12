include <Defines_v1.scad>;

module Stativ() {
    difference() {
        union() {
            hull() {
                translate([0, stand, 0]) cylinder(5, 5, 5, $fn=48);
                cylinder(5, 10, 10, $fn=48);
            }
            cylinder(20, 8, 8, $fn=48);
        }
        translate([0, -10, 15.1]) cube([20, 20, 5]);
        translate([-3.5, 0, 15.1]) 
            cylinder(10.1, 1, 1, $fn=16, center = true);
    }
}

module Scheibe() {
    difference() {
        cylinder(5, 10, 10, $fn=48);
        translate([-3.5, 0, 0.1]) 
            cylinder(10.1, 1, 1, $fn=16, center = true);
        translate([-3.5, 0, 4]) 
            cylinder(2.1, 1, 3, $fn=16, center = true);        
    }
}

Stativ();
translate([30,0,0]) Scheibe();