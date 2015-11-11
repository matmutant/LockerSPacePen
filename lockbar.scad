module lockbar()
{
	translate([0,0,0]) {
		translate([0,0,160]) {
			union() {
				rotate([90,0,0]) cylinder(h = 70, r=20, center = false, $fn=100);
				translate([0,-80,0]) sphere(r=28);
			}
		}
	}
}
