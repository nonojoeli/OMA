include <Defines_v1.scad>;

module LED() {
    union() {
        cube([led, led, 2], center = true);
        cube([led+1, led+1, 0.5], center = true);
    }
}

module Diffusor() {
    translate([margin, 0, -thick + 1.1]) {        
            for (a = [ 0 : 1 : 14 ])
                translate([(a + 0.5) * (5 + space) + 5, height / 2 - 7, 0]) 
                    LED();
                    
            for (a = [ 0 : 1 : 14 ])
                translate([(a + 0.5) * (5 + space) + 5, height / 2 + 7, 0]) 
                    LED();
        }        
}

Diffusor();