include <Defines_v1.scad>;

module Hinten() {
    union() {
        difference() {
            translate([width / 2, height / 2, 2.5]) 
                cube([width, height, 5], center = true);
            
            translate([0, 0, 4.5]) {
                translate([width / 2, height / 2, 0]) 
                    cube([width + 0.1, height - 12, 3], center = true);
                translate([width / 2, height, 0]) 
                    cube([width + 0.1, 6, 3], center = true);
                translate([width / 2, 0, 0]) 
                    cube([width + 0.1, 6, 3], center = true);
                translate([10, height / 2, 0]) 
                    cube([20.1, height + 0.1, 3], center = true);
                translate([width - 10, height / 2, 0]) 
                    cube([20.1, height + 0.1, 3], center = true);
            }
            translate([width / 2 + usb_offs, 13, 0.6]) 
                cube([12, 12, 5], center = true);    
        
            translate([width / 2 + 30, 20, 0.6]) 
                cylinder(5, 5, 5, $fn=48, center = true);
        }
        translate([width / 2 + usb_offs - 11, 6, 9]) 
            cube([10, 6, 12], center = true);        
        translate([width / 2 + usb_offs + 11, 6, 9]) 
            cube([10, 6, 12], center = true);        
    }
}

Hinten();