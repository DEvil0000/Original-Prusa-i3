use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-belt-idler.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-holder-front.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/lm8uu_holder_cyl.scad>;

use</home/alexander/git/Original-Prusa-i3/Printed-Parts/scad/y-belt-holder.scad>;

inner_pully_d = 14;
outer_pully_d = 20;

//item frame
translate([-10+75,-200,0])cube([20,400,20]);
translate([-10-75,-200,0])cube([20,400,20]);
translate([-75,-10+160,0])cube([150,20,20]);
translate([-75,-10-160,0])cube([150,20,20]);

//nema 17 stepper
translate([5,170,0])color([0.5,1,0])cube([42,42,26*2]);
translate([-20+5,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=20,d=inner_pully_d);
translate([-20+5,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=3,d=outer_pully_d);
translate([0,170+21,26])rotate([0,90,0])color([0.5,1,0])cylinder(h=3,d=outer_pully_d);

//belt
translate([-3,-200,-1+26-inner_pully_d/2])color([0.7,0.2,0.2])cube([6,400,2]);
translate([-3,-200,-1+26+inner_pully_d/2])color([0.7,0.2,0.2])cube([6,400,2]);

//rod holder
/*
translate([75,-10+200,20])rod_holder();
translate([-75,-10+200,20])rod_holder();
translate([75,-200,20])rod_holder();
translate([-75,-200,20])rod_holder();
*/

//rods
translate([75,200,20+10.5])rotate([90,0,0])cylinder(h=400,r=4,$fn=30);
translate([-75,200,20+10.5])rotate([90,0,0])cylinder(h=400,r=4,$fn=30);

//lm8uu holder clamps
/*
translate([75,0,20+10.5])rotate([-90,0,0])lm8uu_holder_clamp();
translate([-75,0,20+10.5])rotate([-90,0,0])lm8uu_holder_clamp();
*/

//belt idler
translate([0,-147-17,20])rotate([0,0,180])Y_belt_idler(); 
translate([0,-147,20])rotate([0,0,180])Y_belt_idler_holder();

//bed holder
translate([-215/2,-215/2,40])cube([215,215,6]);

//belt holder
translate([0,0,-6.5-6])y_belt_holder();