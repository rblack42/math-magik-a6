//####################################
// math-magik-a6.scad
// (c) 2021 - Roie R. Black
//************************************
include <math_magik_a6_pos.scad>
use <MMlib/position.scad>


//use <prop/prop.scad>
//use <fuselage/fuselage.scad>
use <wing/wing.scad>
use <stab/stab.scad>


module spinning_prop(ang=$t*360) {
  align(prop_pos)
    rotate([-ang,0,0])
      prop();
}

module math_magik_a6() {
  //align(fuse_pos) fuselage();
  align(wing_pos) wing();
  align(stab_pos) stab();
  //spinning_prop();
}

//-------------------------------------
// debug display

math_magik_a6();

