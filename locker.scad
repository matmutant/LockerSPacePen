//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module locker()
{
	translate([0,0,0]) {
		translate([0,0,0]) {
			difference() {
				cylinder(h = 32, r = 3, $fn=cylindrfn);
				translate([0,0,16]) rotate([90,0,0]) cylinder (h = 3.5, r=2.0, center = false, $fn=cylindrfn);
			}
		}
	}


}
