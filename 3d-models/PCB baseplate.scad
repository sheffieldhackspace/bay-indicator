$fn = 100;

union() {
    difference() {
        cube([150, 52, 5]);
        translate([15.5, 17, 0]) cylinder(h = 5, d = 5);
        translate([57, 0.5, 0]) union() {
            translate([6.25, 6.45, 0]) cylinder(h = 5, d = 4);
            translate([69.75, 6.45, 0]) cylinder(h = 5, d = 4);
            translate([6.25, 44.55, 0]) cylinder(h = 5, d = 4);
            translate([69.75, 44.55, 0]) cylinder(h = 5, d = 4);
        }

    }

    difference() {
        translate([145, 16, 5]) cube([5, 20, 12.25]);
        translate([147.5, 16, 13]) cube([2.5, 20, 2.25]);
    }
}
