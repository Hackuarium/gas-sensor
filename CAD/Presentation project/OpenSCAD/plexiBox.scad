$fn=50;

use <Screwhole.scad>
use <Pipehole.scad>

plexiBox();

//The box in plexiglas around the sensors
module plexiBox(pLength = 100, pWidth = 46.35, pHeight = 23, pWalls = 6, radPipe=6, DiamScrew = 3) {
    difference(){
        cube([pLength, pWidth, pHeight], center = true);
        translate([0,0,-3.01]){
            cube([pLength-2*pWalls, pWidth-2*pWalls, pHeight-pWalls], center = true);
        }
        
        //holes for the pipes
        translate([0, 0,-3])Pipehole(radPipe, pLength);
        
        //holes for the screw
        OFFSET = 3.35;
        translate([(pLength-2*pWalls)/2-OFFSET,(pWidth-2*pWalls)/2-OFFSET,10])Screwhole(DiamScrew, pWalls);
        translate([-(pLength-2*pWalls)/2+OFFSET,(pWidth-2*pWalls)/2-OFFSET,10])Screwhole(DiamScrew, pWalls);
        translate([-(pLength-2*pWalls)/2+OFFSET,-(pWidth-2*pWalls)/2+OFFSET,10])Screwhole(DiamScrew, pWalls);
        translate([(pLength-2*pWalls)/2-OFFSET,-(pWidth-2*pWalls)/2+OFFSET,10])Screwhole(DiamScrew, pWalls);
        }
    
}

