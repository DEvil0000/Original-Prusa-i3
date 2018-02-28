// PRUSA iteration4
// Y belt idler
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

module Y_belt_idler()
{
    difference()
    { 
        // base block
        union() {
            translate([-12.5,-20,5]) cube([25,20,35]);
            translate([-25,-7,5])cube([50,7,35]);
        }
        translate([-4.75,-27,-1]) cube([9.5,20,50]); 
        
        // angled front side   
        translate([-15,-19.5,-15]) rotate([37,0,0]) cube([30,20,40]); 
        translate([-30,0,-11]) rotate([75,0,0]) cube([60,20,40]);
        translate([-30,5,-7.5]) rotate([90,0,0]) cube([60,20,40]); 
        
        translate([-15,-40,28.5]) rotate([-25,0,0]) cube([30,20,20]); 
        translate([-30,-35,46]) rotate([-75,0,0]) cube([60,20,40]);
        translate([-30,-35,53.5]) rotate([-90,0,0]) cube([60,20,40]); 
        
        // screws
        translate([19,1,22.5]) rotate([90,0,0]) cylinder( h=25, r=1.65, $fn=30 ); 
        translate([19,-2,22.5]) rotate([90,0,0]) cylinder( h=6, r=3.2 , $fn=6 ); 
        translate([-19,1,22.5]) rotate([90,0,0]) cylinder( h=25, r=1.65, $fn=30 ); 
        translate([-19,-2,22.5]) rotate([90,0,0]) cylinder( h=6, r=3.2 , $fn=6 ); 
        translate([19,-5,22.5]) rotate([90,0,0]) cylinder( h=6, r=3.2 , r2=3.9, $fn=6 ); 
        translate([-19,-5,22.5]) rotate([90,0,0]) cylinder( h=6, r=3.2 , r2=3.9, $fn=6 );
        translate([19,1,22.5]) rotate([90,0,0]) cylinder( h=2, r=2.5, r2=1.65,$fn=30 ); 
        translate([-19,1,22.5]) rotate([90,0,0]) cylinder( h=2, r=2.5, r2=1.65,$fn=30 ); 
        
        // pulley cut
        translate([-5,-14,22.5]) rotate([0,90,0]) cylinder( h=10, r=10, $fn=30 ); 
           
        // pulley screw axis 
        translate([-13.5,-14,22.5]) rotate([0,90,0]) cylinder( h=30, r=1.6, $fn=30 ); 
        translate([-14,-14,22.5]) rotate([0,90,0]) cylinder( h=7, r=3.2, $fn=6 ); 
        translate([-14,-14,22.5]) rotate([0,90,0]) cylinder( h=4, r2=3.2, r1=4, $fn=6 ); 
        translate([8,-14,22.5]) rotate([0,90,0]) cylinder( h=6, r=3.2, $fn=30 ); 
        
        // upper side mark
        translate([8.5,-3.5,33]) rotate([0,0,0]) cylinder( h=2, r=1.5, $fn=30 ); 
        
        //version   
        translate([3.5,-0.5,20]) rotate([90,0,180]) linear_extrude(height = 0.6) 
        { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
    }
    
}

module Y_belt_idler_holder_half()
{
    difference() {
        //base block
        translate([-12.5,20,-20]) cube([25,6,35+10]);
        
        //item hole
        translate([-30,3,-21]) cube([60,20,21]);
        
        //screws
        translate([-1.65,-0.1+18,4]) cube([1.65*2,10,19]);
        //translate([0,-0.1+18+4.5,4]) rotate([0,0,45]) cube([1.65*3,1.65*3,35]);
        
        translate([0,13,3]) rotate([180,0,0]) cylinder( h=25, d=4.4, $fn=30 );
        translate([0,13,3.01]) rotate([180,0,0]) cylinder( h=2, d=7, d2=4.4,$fn=30 ); 
        translate([0,26,-10]) rotate([90,0,0]) cylinder( h=25, d=4.4, $fn=30 );
        translate([0,26.01,-10]) rotate([90,0,0]) cylinder( h=2, d=7, d2=4.4,$fn=30 ); 
        translate([0,0,-10]) rotate([-90,0,0]) cylinder( h=25, d=4.4, $fn=30 );
        translate([0,-0.01,-10]) rotate([-90,0,0]) cylinder( h=2, d=7, d2=4.4,$fn=30 ); 
    }
       
}

module Y_belt_idler_holder()
{
    difference() {
        union() {
            translate([-19,0,0])Y_belt_idler_holder_half();
            translate([19,0,0])Y_belt_idler_holder_half();
            translate([-12.5,20,-20]) cube([25,6,35+10]);
        }
        
        //item hole
        translate([-30,3,-21]) cube([60,20,21]);
        
            //version   
            translate([3.5,-0.5+26,20-21]) rotate([90,0,180]) linear_extrude(height = 0.6) 
            { text("R2",font = "helvetica:style=Bold", size=4, center=true); }
    }
}
    
rotate([-90,0,0]) Y_belt_idler(); 
rotate([-90,0,0]) Y_belt_idler_holder(); 

