use <spaceRefill.scad>
use <spaceRefillAdapter.scad>
use <locker.scad>
use <Pen.scad>


module spliter()
{
	difference() {
		stylo();
		translate([0,-100,0]) cube([100, 100, 1600]);
	}
}

module content() {
	//set translate([0,0,0]) to open, [0,0,60] to close
	translate([0,0,60]) {
		translate([0,0,-20]) spaceRefill();
		translate ([0,0,0]) color("slategrey") adapter();
		// set rotate([0,0,0]) to open, [0,0,90] to close
		rotate([0,0,90]) {
			translate([0,0,0]) color("Ivory") locker();
			translate([0,0,0]) color("Ivory") lockbar();
		}
	}
}


// display splitted view
translate([0,0,0]) content();
translate([0,0,0]) color("silver") spliter();

// display full view
translate([-200,0,0]) content();
translate([-200,0,0]) color("silver") stylo();

