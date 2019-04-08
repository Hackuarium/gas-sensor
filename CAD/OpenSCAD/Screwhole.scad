$fn = 50;

module Screwhole(DiamScrew = 3, Walls = 3){
    cylinder(d=DiamScrew, h=3*Walls, center = true);
}