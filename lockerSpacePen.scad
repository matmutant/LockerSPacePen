//set cylinder resolution to balance between CPU cost and preview smoothness in each files:
//cylindrfn=;
cylindrfn=30;
//specify polygonal shape of Pen Body
//polygonsh=;
polygonsh=6;
//spring() uses the following arguments
//springG(wire_diameter, spring_height, spring_diameter, top_twists, full_twists, bottom_twists)

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
		translate([0,-10,0]) cube([10, 10, 160]);
	}
}

module content(tstatus,rstatus) {
	translate([0,0,tstatus]) {
		translate([0,0,-2]) spaceRefill();
		translate ([0,0,70]) color("slategrey") adapter();
		rotate([0,0,rstatus]) {
			translate([0,0,96]) color("Ivory") locker();
			translate([0,0,96]) color("Ivory") lockbar();
		}
	}
}

// exploded view module
module exploded() {
	translate([0,0,6]) {
		translate([15,0,-2]) spaceRefill();
		difference() {
			translate ([15,0,70]) color("slategrey") adapter();
			translate([15,-10,0]) cube([10, 10, 160]);
			}
		rotate([0,0,90]) {
			translate([0,-25,96]) color("Ivory") locker();
			translate([0,-35,96]) color("Ivory") lockbar();
		}
	}
	translate([15,0,7]) springG(.25, 17.8, 4.0, 1, 12, 1);
}





//display splitted view closed
translate([0,0,0]) content(6,90);
translate([0,0,0]) color("silver") spliter();
translate([0,0,10]) springG(.25, 14.8, 4.0, 1, 12, 1);

//display splitted view opened
translate([-20,0,0]) content(0,0);
translate([-20,0,0]) color("silver") spliter();
translate([-20,0,10]) springG(.25, 8.8, 4.0, 1, 12, 1);

//display exploded view
translate([20,0,0]) exploded();
translate([20,0,0]) color("silver") spliter();

// display full view closed
translate([-40,0,0]) content(6,90);
translate([-40,0,0]) color("silver") stylo();

// display full view opened
translate([-60,0,0]) content(0,0);
translate([-60,0,0]) color("silver") stylo();

//display spring alone
//springG(wire_diameter, spring_height, spring_diameter, top_twists, full_twists, bottom_twists)
//translate([40,10,10]) springG(.25, 14.8, 4.0, 1, 12, 1);

