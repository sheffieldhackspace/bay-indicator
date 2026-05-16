$fn = 100;

difference() {
    cube([160, 135, 5]);

    translate([0.5, 18.5, 0]) union() {
        translate([2.0+1.5, 5.5+1.5, 0]) cylinder(h = 5, d = 4);
        translate([159-3.0-1.5, 98-4.5, 0]) cylinder(h = 5, d = 4);
    }

    translate([21.5, 7.5, 0]) union() {
        translate([0, 0, 0]) cylinder(h = 5, d = 4);
        translate([117, 0, 0]) cylinder(h = 5, d = 4);
        translate([0, 120, 0]) cylinder(h = 5, d = 4);
        translate([117, 120, 0]) cylinder(h = 5, d = 4);
    }
}


