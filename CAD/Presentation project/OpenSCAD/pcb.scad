$fn = 50;

pcb();

module pcb(pcbL = 100, pcbW = 100, pcbH = 1){
    color("pink") cube([pcbL,pcbW, pcbH],center = true);
}