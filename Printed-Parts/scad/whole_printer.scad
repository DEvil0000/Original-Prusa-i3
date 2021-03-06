use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-belt-idler.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-holder-front.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/lm8uu_holder_cyl.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-belt-holder.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/z-axis-bottom.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/z-axis-top.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/x-end-motor.scad>;

inner_pully_d = 12.3; // 16t -> 9.68 oder 20t -> 12.22
outer_pully_d = 20;
belt_height = 1.4 + 0.6; // belt is 1.38 + add some moving space

show_frame = 1;
show_functional = 0;
show_rods = 1;
show_bed_holder = 0;

//item frame
if (show_frame) {
    translate([-10+75+10,-200,0])cube([20,400,20]);
    translate([-10-75-10,-200,0])cube([20,400,20]);
    translate([-75,-10+160,0])cube([150,20,20]);
    translate([-75,-10-160,0])cube([150,20,20]);
    
    translate([-100-190/2,0,0])cube([100,20,20]);
    translate([+190/2,0,0])cube([100,20,20]);
    translate([-200,0,350+20])cube([400,20,20]);
    translate([-10+170+10,0,20])cube([20,20,350]);
    translate([-10-170-10,0,20])cube([20,20,350]);
}

//nema 17 stepper
if (show_functional) {
    translate([0,0,4]){
        translate([5,170,0])color([0.5,1,0])cube([42,42,26*2]);
        translate([-20+5,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=20,d=inner_pully_d);
        translate([-20+5,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=3,d=outer_pully_d);
        translate([0,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=3,d=outer_pully_d);
    }
}

//belt
if (show_functional) {
    translate([0,0,4]) {
        translate([-3,-200,+26-inner_pully_d/2-belt_height])color([0.7,0.2,0.2])cube([6,400,belt_height]);
        translate([-3,-200,+26+inner_pully_d/2])color([0.7,0.2,0.2])cube([6,400,belt_height]);
    }
}

//rod holder
/*
translate([75+10,-10+200,20])rod_holder();
translate([-75-10,-10+200,20])rod_holder();
translate([75+10,-200,20])rod_holder();
translate([-75-10,-200,20])rod_holder();
*/

//rods
if (show_rods) {
    translate([75+10,200,20+10.5])rotate([90,0,0])cylinder(h=400,r=4,$fn=30);
    translate([-75-10,200,20+10.5])rotate([90,0,0])cylinder(h=400,r=4,$fn=30);
}

//lm8uu holder clamps
translate([75+10,0,20+10.5])rotate([-90,0,0])lm8uu_holder_clamp();
translate([-75-10,0,20+10.5])rotate([-90,0,0])lm8uu_holder_clamp();

//belt idler
translate([0,-147-17,8])rotate([0,0,180])Y_belt_idler(); 
translate([0,-147,20])rotate([0,0,180])Y_belt_idler_holder();

//bed holder
if (show_bed_holder) {
    #translate([-215/2,-215/2,40])cube([215,215,6]);
}

//belt holder
translate([0,0,-2.5])y_belt_holder();

// 50, 52.5, 53(5)
translate([390/2-25,0,53])z_bottom_right();
translate([-390/2+25,0,53])z_bottom_left();

//z axis rods
if (show_rods) {
    translate([390/2-8,-52.5/2-3,53-5+20])cylinder(d=8,h=320);
    translate([-390/2+8,-52.5/2-3,53-5+20])cylinder(d=8,h=320);
}

// 38, 65, 16
translate([390/2-25,0,390])z_top_right();
translate([-390/2+25,0,390])z_top_left();

//x axis rods
if (show_rods) {
    translate([-380/2,-52.5/2-3,150])rotate([0,90,0])cylinder(d=8,h=380);
    translate([-380/2,-52.5/2-3,200])rotate([0,90,0])cylinder(d=8,h=380);
}

//translate([-390/2+8,-52.5/2-3,150])rotate([180,0,-90])x_end_motor();
