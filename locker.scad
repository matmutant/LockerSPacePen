//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module locker()
{
	translate([0,0,0]) {
		translate([0,0,0]) {
			difference() {
				cylinder(h = 320, r = 34, $fn=cylindrfn);
				translate([0,0,160]) rotate([90,0,0]) cylinder (h = 35, r=20, center = false, $fn=cylindrfn);
			}
		}
	}


}
