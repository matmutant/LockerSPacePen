//Code taken and adapted from forum.openscad.org, user: blue-ice

$fs = 0.1; 

// ***** PARAMETERS ***** 

// spring measurements 
//wire_diameter = 2.5;
//spring_height = 230;
//spring_diameter = 40; 
//top_twists = 1; 
//full_twists = 10; 
//bottom_twists = 1; 

module springG(wire_diameter, spring_height, spring_diameter, top_twists, full_twists, bottom_twists)
{

// tuning 
degrees_per_step = 20; // use multiple of (full_twists * 360) 

//extraneous 
height_between_turns = (spring_height - (wire_diameter*2))/full_twists; //0.115; 

// ***** SPRING PARTS ***** 

union() { 
    // top 
    translate([0,0,spring_height-wire_diameter]) 
      rotate([0,0,180]) 
        helix(helix_dia=spring_diameter, wire_dia=wire_diameter, turn_elev=wire_diameter, degrees=360, clockwise=0, accuracy=degrees_per_step); 
    
     // middle 
    translate([0,0,wire_diameter]) 
      helix(spring_diameter, wire_diameter, height_between_turns, 360 * full_twists, 0, degrees_per_step); 
    
     // bottom 
    translate([0,0,0]) 
      helix(helix_dia=spring_diameter, wire_dia=wire_diameter, turn_elev=wire_diameter, degrees=360, clockwise=0, accuracy=degrees_per_step); 
} 

// ***** HELIX FUNCTION ***** 

module helix(helix_dia, wire_dia, turn_elev, degrees, clockwise, accuracy) { 
    union() { 
        for (i = [0 : (degrees / accuracy) - 1]) { 
            hull() { 
                translate([ 
                        (helix_dia/2)*sin(i*accuracy), 
                        (helix_dia/2)*((2*clockwise)-1)*cos(i*accuracy), 
                        (turn_elev * i*accuracy/360) + (wire_dia/2)]) 
                          rotate([i*accuracy,((2*clockwise)-1) * 90,0]) 
                            cylinder(r=wire_dia/2, h=0.01); 
    
                translate([ 
                        (helix_dia/2)*sin((i+1)*accuracy), 
                        (helix_dia/2)*((2*clockwise)-1)*cos((i+1)*accuracy), 
                        (turn_elev * (i+1)*accuracy/360) + (wire_dia/2)]) 
                          rotate([(i+1)*accuracy,((2*clockwise)-1) * 90,0]) 
                            cylinder(r=wire_dia/2, h=0.01); 
            } 
        } 
    } 
} 
}
//translate([0,0,100]) springG(2.5, 230, 40, 1, 10, 1);
