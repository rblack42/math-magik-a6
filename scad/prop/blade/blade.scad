//#######################################
// blade.scad prop_blade
// (c) 2021 - Roie R. Black
//***************************************
include <MMlib/colors.scad>
include <../prop_data.scad>
use <MMlib/elliptic_blade_blank.scad>

$fn = 100;

module prop_blade() {
  color(WOOD_Balsa) {
      linear_extrude(
        height = max_prop_thickness,
        center = false,
        convexity = 10
      )
      elliptic_blade_blank(s,c,f,s1,s2,s3,s4);
  }
}


prop_blade();
