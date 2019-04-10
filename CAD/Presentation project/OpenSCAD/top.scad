$fn = 50;

use <Screwhole.scad>;
use <Pipehole.scad>

top();

//The top part (with space for plexi box)
module top(tLength = 106, tWidth = 106, tHeight = 23, tWalls = 3, DiamScrew = 3, pLength = 100, pWidth = 46.35, radPipe = 6){
    difference(){
        cube([tLength, tWidth, tHeight], center = true);
        translate([0,0,-(tWalls+0.01)/2]){
            cube([tLength-2*tWalls, tWidth-2*tWalls, tHeight-tWalls], center = true);
        }
        
        //hole for plexibox
        translate([0,(tWidth-2*tWalls-pWidth)/2-7.15,1]) cube([pLength, pWidth, tHeight], center = true);
        
        //holes for the pipes
        translate([0, (tWidth-2*tWalls-pWidth)/2-7.15,-3])Pipehole(radPipe, tWidth+tWalls);
        
        //hole for RJ12
        RJ12_W = 13.2;
        RJ12_H = 11.5;
        RJ12_offset = 5.15; //from middle of the box
         translate([-(tLength-tWalls)/2, -(RJ12_W/2+RJ12_offset),-RJ12_H/2]) cube([2*tWalls, RJ12_W, RJ12_H+0.1], center = true);
        
        //hole for alim
        ALIM_d = 4;
        ALIM_offset_H = 31.18; //from middle of the box, horizontally
        ALIM_offset_V = 6.5; //from bottom of the box, vertically
        translate([-(tLength-tWalls)/2,-(ALIM_offset_H+ALIM_d/2),-tHeight/2+ALIM_offset_V]){
            rotate([0,90,0]) cylinder(d=ALIM_d, h=2*tWalls, center = true);
        }
        
        //holes for the screw
        OFFSET = 3.4;
        translate([(tLength-2*tWalls)/2-OFFSET,(tWidth-2*tWalls)/2-OFFSET,tHeight/2-tWalls])Screwhole(DiamScrew, tWalls);
        translate([-(tLength-2*tWalls)/2+OFFSET,(tWidth-2*tWalls)/2-OFFSET,tHeight/2-tWalls])Screwhole(DiamScrew, tWalls);
        translate([-(tLength-2*tWalls)/2+OFFSET,-(tWidth-2*tWalls)/2+OFFSET,tHeight/2-tWalls])Screwhole(DiamScrew, tWalls);
        translate([(tLength-2*tWalls)/2-OFFSET,-(tWidth-2*tWalls)/2+OFFSET,tHeight/2-tWalls])Screwhole(DiamScrew, tWalls);
   }
}