module spaceRefill()
{
	color("grey") translate([0,0,0]) {
		cylinder(h = 230, r = 15, $fn=100);
		translate([0,0,-20]){
			cylinder(h = 20, r1 = 5, r2 = 15, $fn=100);
		}
		translate([0,0,230]){
			cylinder(h = 550, r=25, $fn=100);
		}
	}
	translate([0,0,-20]) {
			color("blue") sphere(r = 4, $fn=100);
	}
}
