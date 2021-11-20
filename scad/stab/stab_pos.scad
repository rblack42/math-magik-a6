//########################################
// stab_pos.scad
// (c) 2021 - Roie R. Black
//****************************************
include <./stab_data.scad>
include <../materials.scad>


stab_center_pos = [0,0,0,0,0,0];
stab_left_tip_pos = [
  0,
  -stab_center_span/2,
  0,
  0,
  0,
  0
];
stab_right_tip_pos = [
  0,
  stab_center_span/2,
  0,
  0,
  0,
  0
];
stab_le_mount_pos = [
  -post_diameter/2-tube_thickness,
  0,
  0,
  0,
  0,
  0
];
stab_te_mount_pos = [
  stab_chord+post_diameter/2+tube_thickness,
  0,
  0,
  0,
  0,
  0
];
