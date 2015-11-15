//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module spaceRefill()
{
	color("grey") {
		//translate([0,0,0]) {
			cylinder(h = 21, r = 1, $fn=cylindrfn);
			translate([0,0,-2]){
				cylinder(h = 2, r1 = .5, r2 = 1, $fn=cylindrfn);
			}
			translate([0,0,21]){
				cylinder(h = 65, r=2.5, $fn=cylindrfn);
			}
		//}
	}
	translate([0,0,-1.9]) {
			color("blue") sphere(r = .4, $fn=cylindrfn);
	}
}
