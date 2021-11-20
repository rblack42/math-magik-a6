//########################################
// left_tip_pos.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../stab_data.scad>

le_pos = [
  0,
  -stab_tip_le_span/2,
  0,
  0,
  0,
  0
];
te_pos = [
  stab_chord - spar_size,
  -stab_tip_span/2,
  0,
  0,
  0,
  0];
arc_pos = [
  stab_tip_radius,
  -stab_tip_span + stab_tip_radius,
  0,
  0,
  0,
  0
];
rib1_pos = [
  stab_tip_rib_chord/2 + stab_tip_radius,
  -stab_tip_span,
  0,
  0,
  0,
  90,
];
rib2_pos = [
  spar_size,
  -stab_tip_span/2,
  0,
  0,
  0,
  0
];
//left_tip_cover_pos = [0,0,0,0,0,0];
