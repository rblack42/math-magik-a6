//########################################
// left_tip_pos.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../wing_data.scad>

le_pos = [
  0,
  -wing_tip_le_span/2,
  0,
  0,
  0,
  0
];
te_pos = [
  wing_chord - spar_size,
  -wing_tip_span/2,
  0,
  0,
  0,
  0];
arc_pos = [
  wing_tip_radius, 
  -wing_tip_span + wing_tip_radius, 
  0,
  0,
  0,
  0
];
rib1_pos = [
  wing_tip_rib_chord/2 + wing_tip_radius,
  -wing_tip_span,
  0,
  0,
  0,
  90
];
rib2_pos = [
  spar_size, 
  -wing_tip_span/2,
  0,
  0,
  0,
  0]
;
left_tip_cover_pos = [0,0,0,0,0,0];
