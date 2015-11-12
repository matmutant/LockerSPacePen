//set cylinder resolution to balance between CPU cost and preview smoothness in each files:
//cylindrfn=;
cylindrfn=30;
//specify polygonal shape of Pen Body
//polygonsh=;
polygonsh=6;

include <spaceRefill.scad>
include <spaceRefillAdapter.scad>
include <locker.scad>
include <lockbar.scad>
include <Pen.scad>
use <spring.scad>

module spliter()
{
	difference() {
		stylo();
		translate([0,-100,0]) cube([100, 100, 1600]);
	}
}

module content(tstatus,rstatus) {
	translate([0,0,tstatus]) {
		translate([0,0,-20]) spaceRefill();
		translate ([0,0,620]) color("slategrey") adapter();
		rotate([0,0,rstatus]) {
			translate([0,0,880]) color("Ivory") locker();
			translate([0,0,880]) color("Ivory") lockbar();
		}
	}
}

// exploded view module
module exploded() {
	translate([0,0,60]) {
		translate([150,0,-20]) spaceRefill();
		difference() {
			translate ([150,0,620]) color("slategrey") adapter();
			translate([150,-100,0]) cube([100, 100, 1600]);
			}
		rotate([0,0,90]) {
			translate([0,-250,880]) color("Ivory") locker();
			translate([0,-350,880]) color("Ivory") lockbar();
		}
	}
	translate([150,0,70]) springG(2.5, 198, 40, 1, 12, 1);
}




//resize([13,0,0], true) {
//display splitted view closed
translate([0,0,0]) content(60,90);
translate([0,0,0]) color("silver") spliter();
translate([0,0,100]) springG(2.5, 168, 40, 1, 12, 1);

//display splitted view opened
translate([-200,0,0]) content(0,0);
translate([-200,0,0]) color("silver") spliter();
translate([-200,0,100]) springG(2.5, 108, 40, 1, 12, 1);

//display exploded view
translate([200,0,0]) exploded();
translate([200,0,0]) color("silver") spliter();

// display full view closed
translate([-400,0,0]) content(60,90);
translate([-400,0,0]) color("silver") stylo();

// display full view opened
translate([-600,0,0]) content(0,0);
translate([-600,0,0]) color("silver") stylo();
//}
//display spring alone
//springG(wire_diameter, spring_height, spring_diameter, top_twists, full_twists, bottom_twists)
//translate([400,0,100]) springG(2.5, 168, 40, 1, 12, 1);

