//the ugly "4" digits are for quick hack height compensation
shaft_center_height = 26+4;
nema_size = 43;

difference()
{
    //body
    translate([-25,-25,0.5])cube([50,50,50+4]);

    //nema 17 motor core
    translate([-nema_size/2,-nema_size/2,shaft_center_height-nema_size/2-4])cube([nema_size+20,nema_size+20,nema_size+4]);
    
    //nema 17 center
    translate([0,0,shaft_center_height])rotate([0,-90,0])cylinder(h=40, d=22.05, $fn=200);
    
    //nema 17 screws
    translate([0,31/2,shaft_center_height+31/2])rotate([0,-90,0])cylinder(h=60,d=3.3, $fn=30);
    translate([0,-31/2,shaft_center_height-31/2])rotate([0,-90,0])cylinder(h=60,d=3.3, $fn=30);
    translate([0,31/2,shaft_center_height-31/2])rotate([0,-90,0])cylinder(h=60,d=3.3, $fn=30);
    translate([0,-31/2,shaft_center_height+31/2])rotate([0,-90,0])cylinder(h=60,d=3.3, $fn=30);
    
    //side cut
    translate([28,-25,0])rotate([0,0,45])cube([100,100,70]);
    translate([-9,-9,0])cylinder(h=60,d=24.5);
    
    //holder screws
    translate([-15,-27,0.5+10-2.5])cube([30,10,5]);
    translate([-15,-27,0.5+10-2.5+20])cube([30,10,5]);
    translate([-15,-27,0.5+10-2.5+30])cube([30,10,5]);
}
