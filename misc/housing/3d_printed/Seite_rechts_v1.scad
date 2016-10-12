include <Defines_v1.scad>;

module Rechts() {
    union() {
        difference() {
            translate([depth / 2, height / 2, 2.5]) 
                cube([depth, height, 5], center = true);
            translate([depth / 2, height / 2, 4.5]) 
                cube([depth - 16, height - 4, 4], center = true);
            translate([depth / 2, height / 2, 4.5]) 
                cube([depth - 5, 24, 4], center = true);
            translate([4, height / 2, 4.5]) 
                cube([3.5, height + 0.1, 4], center = true);
            translate([depth - 4, height / 2, 4.5]) 
                cube([3.5, height + 0.1, 4], center = true);
            translate([30, height / 2, 4]) 
                cylinder(8.1, 9, 9, $fn=48, center = true);
        }
        translate([24, height / 2 - 2.7, 4]) rotate([0, 0, 25])
             cylinder(8, 6, 6, $fn = 3, center = true);
        translate([30, height / 2, 4]) 
            difference() {
                cylinder(8, 12, 12, $fn=48, center = true);
                cylinder(8.1, 9, 9, $fn=48, center = true);
            }            
    }
}

Rechts();