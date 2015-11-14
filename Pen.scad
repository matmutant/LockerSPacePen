//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

//Uncomment to specify polygonal shape of Pen Body
//polygonsh=7;

module bodyStylo()
{
	translate([0,0,10.0]) {
		difference(){
			cylinder(h = 130.0, r = 5.0, $fn=polygonsh);
			cylinder(h = 130.0, r = 3.5, $fn=cylindrfn);
		}
	}
	translate([0,0,0]) {
		difference(){
			cylinder(h = 10.0, r1 = 2.5, r2 = 5.0, $fn=polygonsh);
			cylinder(h = 10.0, r = 1.1, $fn=cylindrfn);
		}
	}
}

module lockerTrace()
{
	translate([0,0,112]) {
		hull() {
					rotate([90,0,0]) cylinder(h = 5.0, r=2.05, center = false, $fn=100);
			translate([0,0,-5.0]) {
				rotate([90,0,0]) cylinder(h = 5.0, r=2.05, center = false, $fn=100);
			}
		}
		hull() {
			translate([0,0,-5.0]) {
				rotate([90,0,90]) cylinder(h = 5.0, r=2.05, center = false, $fn=100);
			}
			translate([0,0,6.0]) {
				rotate([90,0,90]) cylinder(h = 5.0, r=2.05, center = false, $fn=100);
			}
		}

		translate([0,-5.0,-7.05]) cube([5.0,5.0,4.1]);
	}
}

module jimping()
{
	for (i = [120:10:280]) {
		//rotate_extrude() translate([50,i,0]) circle (3, $fn=7);
		translate([0,0,i]) difference() {
			cylinder(h=3, d=110, $fn=10);
			cylinder(h=3, d=95, $fn=100);
		}
	}
	for (i = [1250:10:1290]) {
		//rotate_extrude() translate([50,i,0]) circle (3, $fn=7);
		translate([0,0,i]) difference() {
			cylinder(h=3, d=110, $fn=10);
			cylinder(h=3, d=95, $fn=100);
		}
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
