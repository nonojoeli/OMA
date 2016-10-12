include <Defines_v1.scad>;

module hole() {
    union() {
        translate([0, 0, 3.5]) cylinder(7.1, 1, 1, $fn=16, center = true);
        translate([0, 0, 0.7]) cylinder(1.5, 1.5, 1, $fn=16, center = true);
    }
}

module Boden() {
    difference() {
        union() {
            difference() {
                union() {
                    //translate([bwidth / 2, bheight / 2, 2.5]) 
                    //    cube([bwidth, bheight, 5], center = true);
                    translate([16.5, 16, 3.5]) 
                        cube([13, 13, 7], center = true);
                    translate([bwidth-16.5, 16, 3.5]) 
                        cube([13, 13, 7], center = true);
                    translate([16.5, bheight-16, 3.5]) 
                        cube([13, 13, 7], center = true);
                    translate([bwidth-16.5, bheight-16, 3.5]) 
                        cube([13, 13, 7], center = true);
                }

                translate([bwidth - 6.5, bheight / 2, 4]) 
                    cube([7, depth + 2, 2.1], center = true);

                translate([6.5, bheight / 2, 4]) 
                    cube([7, depth + 2, 2.1], center = true);

                translate([bwidth / 2, 7.5, 4]) 
                    cube([width, 4, 2.1], center = true);

                translate([bwidth / 2, bheight - 7.5, 4]) 
                    cube([width, 4, 2.1], center = true);

                translate([bwidth / 2, bheight / 2, 4]) 
                    cube([width - 12, depth - 38, 2.1], center = true);

                translate([bwidth / 2, bheight / 2, 4]) 
                    cube([width - 32, depth - 18, 2.1], center = true);

                translate([16.5, 16.5, 0]) hole();
                translate([bwidth - 16.5, 16.5, 0]) hole();
                translate([16.5, bheight - 16.5, 0]) hole();
                translate([bwidth - 16.5, bheight - 16.5, 0]) hole();
            }

            translate([bwidth / 2 + usb_offs, bheight - 17, 4])
                cube([30, 10, 2.1], center = true);

            translate([bwidth / 2, bheight / 2, 4])
                cube([20, 20, 3.1], center = true);
            
            translate([bwidth / 2 + 50, bheight / 2 - 15, 4])
            {
                translate([21, 21, 0])
                    cube([8, 8, 4], center = true);
                translate([-21, 21, 0])
                    cube([8, 8, 4], center = true);
                translate([21, -21, 0])
                    cube([8, 8, 4], center = true);
                translate([-21, -21, 0])
                    cube([8, 8, 4], center = true);
            }
        }
        translate([bwidth / 2, bheight / 2, 4]) 
            cylinder(10, 4.5, 4.5, center = true);
    }
}

Boden();