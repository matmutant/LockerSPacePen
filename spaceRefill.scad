//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

module spaceRefill()
{
	color("grey") translate([0,0,0]) {
		cylinder(h = 230, r = 15, $fn=cylindrfn);
		translate([0,0,-20]){
			cylinder(h = 20, r1 = 5, r2 = 15, $fn=cylindrfn);
		}
		translate([0,0,230]){
			cylinder(h = 550, r=25, $fn=cylindrfn);
		}
	}
	translate([0,0,-20]) {
			color("blue") sphere(r = 4, $fn=cylindrfn);
	}
}
