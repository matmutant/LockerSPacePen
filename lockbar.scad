//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module lockbar()
{
	translate([0,0,0]) {
		translate([0,0,16]) {
			union() {
				rotate([90,0,0]) cylinder(h = 7.0, r=2.0, center = false, $fn=cylindrfn);
				translate([0,-8,0]) sphere(r=2.8, $fn=cylindrfn);
			}
		}
	}
}
