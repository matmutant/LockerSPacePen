//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=50;

module adapter()
{
	translate([0,0,0]) {
		translate([0,0,0]) {
			difference() {
				cylinder(h = 26, r = 3.4, $fn=cylindrfn);
				cylinder(h = 14, r = 2.5, $fn=cylindrfn);
			}
		}
	}
}
