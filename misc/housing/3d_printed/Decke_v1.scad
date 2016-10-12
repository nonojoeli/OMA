include <Defines_v1.scad>;

bwidth = width + 14;
bheight = depth + 7;

module hole() {
    union() {
        translate([0, 0, 3.5]) cylinder(7.1, 1, 1, $fn=16, center = true);
        translate([0, 0, 0.7]) cylinder(1.5, 4, 1, $fn=16, center = true);
    }
}

module Decke() {
    difference() {
        union() {
            translate([bwidth / 2, bheight / 2, 2.5]) 
                cube([bwidth, bheight, 5], center = true);
            translate([16.5, 16, 3.5]) 
                cube([13, 13, 7], center = true);
            translate([bwidth-16.5, 16, 3.5]) 
                cube([13, 13, 7], center = true);
            translate([16.5, bheight-16, 3.5]) 
                cube([13, 13, 7], center = true);
            translate([bwidth-16.5, bheight-16, 3.5]) 
                cube([13, 13, 7], center = true);
        }
        
        translate([bwidth - 6.5, bheight / 2, 5]) 
            cube([7, depth + 2, 4.1], center = true);

        translate([6.5, bheight / 2, 5]) 
            cube([7, depth + 2, 4.1], center = true);

        translate([bwidth / 2, 7.5, 5]) 
            cube([width, 4, 4.1], center = true);

        translate([bwidth / 2, bheight - 7.5, 5]) 
            cube([width, 4, 4.1], center = true);

        translate([bwidth / 2, bheight / 2, 5]) 
            cube([width - 12, depth - 38, 4.1], center = true);

        translate([bwidth / 2, bheight / 2, 5]) 
            cube([width - 32, depth - 18, 4.1], center = true);

        translate([16.5, 16.5, 0]) hole();
        translate([bwidth - 16.5, 16.5, 0]) hole();
        translate([16.5, bheight - 16.5, 0]) hole();
        translate([bwidth - 16.5, bheight - 16.5, 0]) hole();

        if (minimal != 1) {
            // OLED hole
            translate([71, bheight / 2 + 5 , 0])
            { 
                translate([6, 0 , 2.5]) 
                    cube([26, 11, 5.1], center = true);
                translate([7, -1 , 3]) 
                    cube([39, 13, 4.1], center = true);
            }
            
            // pin header hole
            translate([bwidth / 2 + 45, bheight - 20 , 2.5]) 
                cube([19, 3, 5.1], center = true);
            
            // loader LED thinning hole
            translate([bwidth / 2 - 30, bheight / 2 - 15, 2.5]) 
                cube([19, 8, 4], center = true);
        }
    }
}

Decke();