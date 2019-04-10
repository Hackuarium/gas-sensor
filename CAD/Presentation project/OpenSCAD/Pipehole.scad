$fn = 50;

module Pipehole(radPipe = 6, Width = 106){
    rotate(a = [0,90,0]) cylinder(r=radPipe, h=Width+3, center = true);
}