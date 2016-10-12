include <Defines_v1.scad>;

module Folie() {
    translate([45, - height / 2 - 3, depth - 50])
        rotate([90,-90,0])
            cube([80,70,1.5], center = true);
}

module Board() {
    translate([52.5, height / 2 - 5, depth / 2 - 5])
    rotate([90,0,0])
    difference() {
        union() {
            cube([63, 52, 1.6], center = true);
            cube([80, 34, 1.6], center = true);
            cube([73, 44, 1.6], center = true);
            
            translate([-35.56, -8.89, 3])
                cube([2.54, 10.16, 10], center = true);
            
            translate([-7.7, -23.24, 3])
                cube([17.78, 2.54, 10], center = true);
            
            translate([12.78, -23.24, 3])
                cube([7.62, 2.54, 10], center = true);
            
            translate([21.59, -12.7, 7])
                cube([20.32, 2.54, 18], center = true);
            translate([21.59, 15.24, 7])
                cube([20.32, 2.54, 18], center = true);            
            translate([24.13, 1.27, 14])
                cube([27.94, 31.75, 1.6], center = true);
            
        }
        
        for (i = [-1: 2: 1]) for (j = [-1: 2: 1])
        {
            translate([i*21, j*21, 0])
                cylinder(2, 1.75, 1.75, $fn=16, center = true);
            translate([i*36.5, j*22, 0])
                cylinder(2, 5, 5, $fn=16, center = true);
        }
        
        cols = [9, 9, 9, 9, 9, 9, 9, 9, 7, 7, 7, 7, 7, 6, 5];
        for (row = [-14 : 1 : 14])
        { 
            for (col = [-cols[abs(row)], -cols[abs(row)] + 1,
                        cols[abs(row)] - 1, cols[abs(row)]]) 
            {
                translate([2.54 * row, 2.54 * col, 0])
                    cube([0.8, 0.8, 2], center = true);
            }
        }
    }
}

Board();

module BatPack() {
    translate([-55, height / 2 - 11, depth / 2])
    rotate([0,0,90]) {
        translate([0, 0, 0]) 
            cylinder(65, 9, 9, center = true);
        translate([0, 19, 0]) 
            cylinder(65, 9, 9, center = true);
        translate([0, 38, 0]) 
            cylinder(65, 9, 9, center = true);
        translate([0, -19, 0]) 
            cylinder(65, 9, 9, center = true);
        translate([0, -38, 0]) 
            cylinder(65, 9, 9, center = true);
    }
}

module Lader() {
    translate([-30, 7 - height / 2 , depth/2 + 20])
    rotate([-90, 0, 0])
    union() {
        translate([0, 0, 0]) 
            cube([77, 19, 11], center = true);
        translate([32, 18, 0]) 
            cube([13, 55, 11], center = true);
        translate([0, 5, -2]) 
            cube([19, 8, 11], center = true);
    }
}

module OLED() {
    translate([-40, 1 - height / 2 , depth/2 - 5])
    rotate([90,0,0])
    union() {
        translate([0, 0, 1]) 
            cube([26, 11, 3.5], center = true);
        translate([0, -1, 0]) 
            cube([39, 13, 1.5], center = true);
        translate([17, -1, -3]) 
            cube([3, 11, 12], center = true);
    }
}
    
module CamMount() {
    translate([0, height / 2 - 1, depth / 2])
    rotate([90,0,0]) difference() {
        union() {
            translate([0, 0, 0]) 
                cylinder(7.5, 4.5, 4.5, center = true);
            translate([0, 0, 3]) 
                cylinder(1.5, 5, 5, center = true);
        }
        translate([0, 0, 0]) 
            cylinder(8, 2.6, 2.6, center = true);
    }
}

Board();