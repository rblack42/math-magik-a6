//#####################################
// stab_data.scad
// (c) 2021 by Roie R. Black
//=====================================
include <../math_magik_a6_data.scad>

// center section dimensions
stab_rib_chord = stab_chord - 2 * spar_size;

// tip section dimensions
stab_tip_span = (stab_span - stab_center_span)/2;
stab_tip_le_span = stab_tip_span - stab_tip_radius;
stab_tip_rib_chord = stab_chord - stab_tip_radius - spar_size;
