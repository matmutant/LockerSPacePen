//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=50;

module adapter()
{
	translate([0,0,0]) {
		translate([0,0,0]) {
			difference() {
				cylinder(h = 260, r = 34, $fn=cylindrfn);
				cylinder(h = 140, r = 25, $fn=cylindrfn);
			}
		}
	}
}
