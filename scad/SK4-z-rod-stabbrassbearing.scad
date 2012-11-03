// PRUSA Mendel  
// GNU GPL v2
// Z threaded rod constraint
// Copyright (c) 2011 Christopher Jansen
// All rights reserved
// Edit by SKaaj4

include <configuration.scad>

outer_diameter = m8_diameter/2+3.3;
shaft_separation = 30;
bearing_od = 16.25;
//22.6
//12.02
bearing_id = m8_diameter;
bearing_rodhole_d = bearing_id + 4;

module origclamp(){
  difference(){
    union(){
      
      translate([outer_diameter, outer_diameter, 0])cylinder(h =outer_diameter*2, r = outer_diameter, $fn = 20);
      translate([outer_diameter, 0, 0])cube([17.5,outer_diameter*2,outer_diameter*2]);
    }


    translate([9, outer_diameter/2+1, 0])cube([18,05,20]);
    translate([outer_diameter, outer_diameter, 0]) cylinder(h =20, r = m8_diameter/2, $fn = 18);
    translate([17, 17, 7.5]) rotate([90, 0, 0]) #cylinder(h =20, r = m3_diameter/2, $fn = 10);
  }
}


difference()
{

  union()
  {
    translate([-outer_diameter,-outer_diameter,0]) origclamp();
    translate([-shaft_separation,0,0]) {
      cylinder(r=(bearing_od/2.1) + 3, h=18);
      translate([-m8_diameter/2,-2.5,0]) cube([30,5,14.62]);
    }
  }

  translate([-shaft_separation, 0,0]) {
    translate([0,0,5]) cylinder(r=bearing_od/2, h=15);
    translate([0,0,-1]) cylinder(r=bearing_rodhole_d/2.2, h=20);
  }
}

