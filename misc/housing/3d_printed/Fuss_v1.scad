include <Defines_v1.scad>;

module Fuss() {
    difference() {
        translate([0,0,5.5]) minkowski() {
            difference() {
                cylinder(10, 8, 8, $fn = grade, center = true);
                translate([0,0,5])
                    cylinder(5, 7.5, 7.5, $fn = grade, center = true);
            }
            sphere(2, $fn=8);
        }
        translate([0,0,-1.5]) 
            cube([20,20,3], center = true);
        translate([0, 0, 5]) 
            cylinder(10.1, 1, 1, $fn = 16, center = true);
        translate([0, 0, 9.5]) 
            cylinder(1, 1, 3, $fn = 16, center = true);
    }
}

translate([-20,-20,0]) Fuss();
translate([20,-20,0]) Fuss();
translate([-20,20,0]) Fuss();
translate([20,20,0]) Fuss();