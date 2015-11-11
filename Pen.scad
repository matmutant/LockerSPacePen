module bodyStylo()
{
	translate([0,0,100]) {
		difference(){
			cylinder(h = 1300, r = 50);
			cylinder(h = 1300, r = 35);
		}
	}
	translate([0,0,0]) {
		difference(){
			cylinder(h = 100, r1 = 25, r2 = 50);
			cylinder(h = 100, r = 18);
		}
	}
}

module lockerTrace()
{
	translate([0,0,1040]) {
		hull() {
					rotate([90,0,0]) cylinder(h = 50, r=20.5, center = false, $fn=100);
			translate([0,0,-50]) {
				rotate([90,0,0]) cylinder(h = 50, r=20.5, center = false, $fn=100);
			}
		}
		hull() {
			translate([0,0,-50]) {
				rotate([90,0,90]) cylinder(h = 50, r=20.5, center = false, $fn=100);
			}
			translate([0,0,60]) {
				rotate([90,0,90]) cylinder(h = 50, r=20.5, center = false, $fn=100);
			}
		}

		translate([0,-50,-70.5]) cube([50,50,41]);
	}
}

module stylo()
{
		translate([0,0,0]) {
		difference() {
		bodyStylo();
		lockerTrace();
		}
		}
}
