use <spaceRefill.scad>
use <spaceRefillAdapter.scad>
use <locker.scad>
use <lockbar.scad>
use <Pen.scad>
use <spring.scad>

module spliter()
{
	difference() {
		stylo();
		translate([0,-100,0]) cube([100, 100, 1600]);
		//jimping();
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

//display splitted view closed
translate([0,0,0]) content(60,90);
translate([0,0,0]) color("silver") spliter();
translate([0,0,100]) springG(2.5, 168, 40, 1, 12, 1);

//display splitted view opened
translate([-200,0,0]) content(0,0);
translate([-200,0,0]) color("silver") spliter();
translate([-200,0,100]) springG(2.5, 108, 40, 1, 12, 1);
