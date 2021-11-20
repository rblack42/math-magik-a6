//########################################
// wing_pos.scad
// (c) 2021 - Roie R. Black
//****************************************
include <./wing_data.scad>
include <../materials.scad>


wing_center_pos = [0,0,0,0,0,0];
wing_left_tip_pos = [
  0, 
  -wing_center_span/2, 
  0, 
  -wing_tip_dihedral_angle,
  0,
  0
];
wing_right_tip_pos = [
  0, 
  wing_center_span/2, 
  0, 
  wing_tip_dihedral_angle,
  0,
  0
];
wing_le_mount_pos = [
  -post_diameter/2-tube_thickness,
  0,
  0,
  0,
  0,
  0
];
wing_te_mount_pos = [
  wing_chord+post_diameter/2+tube_thickness,
  0,
  0,
  0,
  0,
  0
];
