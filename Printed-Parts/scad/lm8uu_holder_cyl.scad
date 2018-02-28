difference() {
  difference() {
    difference() {
      difference() {
        difference() {
          difference() {
            union() {
              hull() {
                translate(v=[0.000, -8.900, 0.000]) {
                rotate([-180.000,-180.000,-180.000]){
                  cube(size=[30.000, 3.000, 25.000], center=true);
                } // End rotate
                } // End translate
                translate(v=[15.000, -8.900, 0.000]) {
                rotate([-90.000,-180.000,-180.000]){
                  cylinder(h=3.000, r1=5.205, r2=5.205, $fn=100, center=true);
                } // End rotate
                } // End translate
                translate(v=[-15.000, -8.900, 0.000]) {
                rotate([-90.000,-180.000,-180.000]){
                  cylinder(h=3.000, r1=6.210, r2=6.210, $fn=100, center=true);
                } // End rotate
                } // End translate
              } // End hull
              cylinder(h=25.000, r1=9.400, r2=9.400, $fn=100, center=true);
            } // End union
            cylinder(h=26.000, r1=7.400, r2=7.400, $fn=100, center=true);
          } // End difference
          translate(v=[0.000, 8.400, 0.000]) {
          rotate([-180.000,-180.000,-180.000]){
            cube(size=[7.400, 22.000, 26.000], center=true);
          } // End rotate
          } // End translate
        } // End difference
        translate(v=[15.000, -7.400, 0.000]) {
        rotate([90.000,-180.000,-180.000]){
          cylinder(h=7.000, r1=1.700, r2=1.700, $fn=100, center=true);
        } // End rotate
        } // End translate
      } // End difference
      translate(v=[-15.000, -7.400, 0.000]) {
      rotate([90.000,-180.000,-180.000]){
        cylinder(h=7.000, r1=1.700, r2=1.700, $fn=100, center=true);
      } // End rotate
      } // End translate
    } // End difference
    translate(v=[15.000, -7.400, 0.000]) {
    rotate([90.000,-180.000,-180.000]){
      cylinder(h=2.400, r1=3.505, r2=3.505, $fn=6, center=true);
    } // End rotate
    } // End translate
  } // End difference
  translate(v=[-15.000, -7.400, 0.000]) {
  rotate([90.000,-180.000,-180.000]){
    cylinder(h=2.400, r1=3.505, r2=3.505, $fn=6, center=true);
  } // End rotate
  } // End translate
} // End difference
