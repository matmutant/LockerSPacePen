//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

//Uncomment to specify polygonal shape of Pen Body
//polygonsh=7;

module bodyStylo()
{
	translate([0,0,100]) {
		difference(){
			cylinder(h = 1300, r = 50, $fn=polygonsh);
			cylinder(h = 1300, r = 35, $fn=cylindrfn);
		}
	}
	translate([0,0,0]) {
		difference(){
			cylinder(h = 100, r1 = 25, r2 = 50, $fn=polygonsh);
			cylinder(h = 100, r = 18, $fn=cylindrfn);
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

module jimping()
{
	for (i = [120:10:280]) {
		rotate_extrude() translate([50,i,0]) circle (3, $fn=7);
	}
	for (i = [1250:10:1290]) {
		rotate_extrude() translate([50,i,0]) circle (3, $fn=7);
	}
}

module stylo()
{
		translate([0,0,0]) {
		difference() {
		bodyStylo();
		lockerTrace();
		jimping();
		}
		}
}


//stylo();
