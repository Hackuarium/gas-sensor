$fn = 50;

bottom();

//The bottom part (with LCD screen)
module bottom(bLength = 106, bWidth = 106, bHeight = 11, bWalls = 3, DiamScrew = 3){
    difference(){
        cube([bLength, bWidth, bHeight], center = true);
        translate([0,0,1.501]){
            cube([bLength-2*bWalls, bWidth-2*bWalls, bHeight-bWalls], center = true);
        }
        
        //hole for the screen
        screen_L = 70.7;
        screen_W = 23.8;
        X_POS = screen_L/2+4.2;
        Y_POS = screen_W/2+12.85;
        translate([-bLength/2+bWalls+X_POS,bWidth/2-bWalls-Y_POS,-3]) cube([screen_L, screen_W, 2*bWalls],center = true);
        //holes for the screw
        OFFSET = 3.4;
        translate([(bLength-2*bWalls)/2-OFFSET,(bWidth-2*bWalls)/2-OFFSET,-bWalls])Screwhole(DiamScrew, bWalls);
        translate([-(bLength-2*bWalls)/2+OFFSET,(bWidth-2*bWalls)/2-OFFSET,-bWalls])Screwhole(DiamScrew, bWalls);
        translate([-(bLength-2*bWalls)/2+OFFSET,-(bWidth-2*bWalls)/2+OFFSET,-bWalls])Screwhole(DiamScrew, bWalls);
        translate([(bLength-2*bWalls)/2-OFFSET,-(bWidth-2*bWalls)/2+OFFSET,-bWalls])Screwhole(DiamScrew, bWalls);
    }
        
}

module Screwhole(DiamScrew = 3, bWalls = 3){
    cylinder(d=DiamScrew, h=2*bWalls, center = true);
}