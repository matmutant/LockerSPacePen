//Uncomment to set cylinder resolution to balance between CPU cost and preview smoothness for this file
//cylindrfn=30;

//Uncomment to specify polygonal shape of Pen Body
//polygonsh=7;

module bodyStylo()
{
	translate([0,0,10.0]) {
		difference(){
			cylinder(h = 130.0, r = 5.0, $fn=polygonsh);
			cylinder(h = 130.0, r = 3.3, $fn=cylindrfn);
		}
	}
	translate([0,0,-1.0]) {
		difference(){
			cylinder(h = 11.0, r1 = 2, r2 = 5.0, $fn=polygonsh);
			cylinder(h = 11.0, r = 1.1, $fn=cylindrfn);
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
	for (i = [12:1:28]) {
		translate([0,0,i]) difference() {
			cylinder(h=.3, d=11.0, $fn=10);
			cylinder(h=.3, d=9.5, $fn=100);
		}
	}
	for (i = [125.0:1.0:129.0]) {
		translate([0,0,i]) difference() {
			cylinder(h=.3, d=11.0, $fn=10);
			cylinder(h=.3, d=9.5, $fn=100);
		}
	}
}

module stylo()
{
		//translate([0,0,0]) {
		difference() {
		bodyStylo();
		lockerTrace();
		jimping();
		}
		//}
}


//stylo();
