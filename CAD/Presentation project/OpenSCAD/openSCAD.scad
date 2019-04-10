$fn = 50;

use <top.scad>
use <bottom.scad>
use <plexiBox.scad>
use <pcb.scad>

openSCAD();

//Dimensions for top box:
tLength = 106;
tWidth = 106;
tHeight = 23;
tWalls = 3;

//Dimensions for bottom box
bLength = 106;
bWidth = 106;
bHeight = 11;
bWalls = 3;

//Dimensions for plexibox
pLength = 100;
pWidth = 46.35;
pHeight = 23;
pWalls = 6;

//Dimensions for PCB
pcbL = 100;
pcbW = 100;
pcbH = 1;

//Dimensions for screw
DiamScrew = 3;

//Dimensions for pipe
radPipe = 6;

module openSCAD(){
    top(tLength, tWidth, tHeight, tWalls, DiamScrew, pLength, pWidth, radPipe);
    translate([0,(tWidth-2*tWalls-pWidth)/2-7.15,0]){
        color("LightCyan",0.5) plexiBox(pLength, pWidth, pHeight, pWalls, radPipe, DiamScrew);
    }
    rotate([0,0,180]){
        translate([0,0,-18])bottom(bLength, bWidth, bHeight, bWalls, DiamScrew);
    }
    translate([0,0,-12]){
        //pcb(pcbL, pcbW, pcbH);
    }

}
