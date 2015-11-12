//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module lockbar()
{
	translate([0,0,0]) {
		translate([0,0,160]) {
			union() {
				rotate([90,0,0]) cylinder(h = 70, r=20, center = false, $fn=cylindrfn);
				translate([0,-80,0]) sphere(r=28, $fn=cylindrfn);
			}
		}
	}
}
