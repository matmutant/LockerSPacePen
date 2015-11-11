module locker()
{
	translate([0,0,0]) {
		translate([0,0,880]) {
			difference() {
				cylinder(h = 320, r = 34);
				translate([0,0,160]) rotate([90,0,0]) cylinder (h = 35, r=20, center = false, $fn=100);
			}
		}
	}


}

module lockbar()
{
	translate([0,0,0]) {
		translate([0,0,1040]) {
			union() {
				rotate([90,0,0]) cylinder(h = 70, r=20, center = false, $fn=100);
				translate([0,-80,0]) sphere(r=28);
			}
		}
	}
}
