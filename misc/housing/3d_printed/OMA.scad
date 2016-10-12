include <Defines_v1.scad>;
use <Diffusor_v1.scad>;
use <Blende_v1.scad>;
use <Hinten_v1.scad>;
use <Seite_links_v1.scad>;
use <Seite_rechts_v1.scad>;
use <Boden_v1.scad>;
use <Decke_v1.scad>;
use <Stativ_v1.scad>;
use <Fuss_v1.scad>;
use <Addons_v1.scad>;

echo(str("Sizes are ", width, "x", height, "x", depth));
echo(str("Base plate is ", bwidth, "x", bheight));

%translate([-width / 2, -height / 2, 12.5]) {
    Diffusor();
}

module Box() {
    translate([-width / 2, -height / 2, 12.5]) {
        Blende();
    }

    translate([-width / 2, height / 2, depth - 2.5]) {
        rotate([0, 180, 180]) {
            Hinten();
        }
    }

    translate([width / 2 + 3, -height / 2, 0]) {
        rotate([0, -90, 0]) {
            Links();
        }
    }

    translate([-width / 2 - 3, height / 2, 0]) {
        rotate([0, -90, 180]) {
            Rechts();
        }
    }

    translate([-width / 2 - 7, height / 2 + 2.5, -3.5]) {
        rotate([90, 0, 0]) {
            Boden();
        }
    }

    translate([-width / 2 - 7, -height / 2 - 2.5, depth + 3.5]) {
        rotate([-90, 0, 0]) {
            Decke();
        }
    }
}

module Stand() {
        translate([-width / 2 - 14, 0, 30]) {
        rotate([90, 5 + $t * 120, 90]) {
            Stativ();
            translate([0,0,21]) Scheibe();
        }
    }

    translate([width / 2 + 14, 0, 30]) {
        rotate([90, -5 - $t * 120, -90]) {
            Stativ();
            translate([0,0,21]) Scheibe();
        }
    }
}

module Fuesse() {
    translate([width / 2 - 10, height / 2 + 0.5, 13]) {
        rotate([90, 0, 180]) {
            Fuss();
        }
    }
    translate([- width / 2 + 10, height / 2 + 0.5, 13]) {
        rotate([90, 0, 180]) {
            Fuss();
        }
    }
    translate([width / 2 - 10, height / 2 + 0.5, depth - 13]) {
        rotate([90, 0, 180]) {
            Fuss();
        }
    }
    translate([- width / 2 + 10, height / 2 + 0.5, depth - 13]) {
        rotate([90, 0, 180]) {
            Fuss();
        }
    }
}
module Addons() {
    //Folie();
    //Board();
    //BatPack();
    //OLED();
    //Lader();
    CamMount();
}

%Box();
%Stand();
%Fuesse();
#Addons();