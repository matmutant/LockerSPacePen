module adapter()
{
	translate([0,0,0]) {
		translate([0,0,0]) {
			difference() {
				cylinder(h = 260, r = 34, $fn=100);
				cylinder(h = 140, r = 25, $fn=100);
			}
		}
	}
}
