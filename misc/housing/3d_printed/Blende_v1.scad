include <Defines_v1.scad>;
use <Diffusor_v1.scad>;

module LED_hole() {
    union() {
        cube([led, led, 5], center = true);
        cube([led+1.1, led+1.1, 0.6], center = true);
    }
}

module Blende() {
    difference() {
        translate([width / 2, height / 2, -thick / 2]) 
            cube([width, height, thick], center = true);
        
        translate([0, 0, 0]) {
            translate([width / 2, height / 2, 0]) 
                cube([width + 0.1, height - 10, thick - 1], center = true);
            translate([width / 2, height, 0]) 
                cube([width + 0.1, 6, thick - 1], center = true);
            translate([width / 2, 0, 0]) 
                cube([width + 0.1, 6, thick - 1], center = true);
            translate([10, height / 2, 0]) 
                cube([20.1, height + 0.1, thick - 1], center = true);
            translate([width - 10, height / 2, 0]) 
                cube([20.1, height + 0.1, thick - 1], center = true);
        }
        
        translate([0, 0, -3]) {
            translate([width / 2, height, 0]) 
                cube([width + 0.1, 6, thick - 1], center = true);
            translate([width / 2, 0, 0]) 
                cube([width + 0.1, 6, thick - 1], center = true);
            translate([2, height / 2, 0]) 
                cube([6, height + 0.1, thick - 1], center = true);
            translate([width - 2, height / 2, 0]) 
                cube([6, height + 0.1, thick - 1], center = true);
        }        
        
        translate([0, 0, -thick / 2 + 1.6]) {
            translate([width / 2, height / 2 - 7, 0]) 
                cube([width - margin - 4, 11.5, thick - 1], center = true);
            translate([width/2, height / 2 + 7, 0]) 
                cube([width - margin - 4, 11.5, thick - 1], center = true);
        }
        
        translate([margin, 0, -9.0]) {        
            for (a = [ 0 : 1 : 14 ])
                translate([(a + 0.5) * (5 + space) + 5, height / 2 - 7, 0]) 
                    LED_hole();
            for (a = [ 0 : 1 : 14 ])
                translate([(a + 0.5) * (5 + space) + 5, height / 2 + 7, 0]) 
                    LED_hole();
        }   
    }
}

%Diffusor();
Blende();