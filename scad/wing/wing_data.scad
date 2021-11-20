//#####################################
// wing.data
// (c) 2021 by Roie R. Black
//=====================================
include <../math_magik_a6_data.scad>

// center section dimensions
wing_rib_chord = wing_chord - 2 * spar_size;

// tip section dimensions
a = wing_tip_dihedral;
b = (wing_span - wing_center_span)/2;
wing_tip_span = sqrt(a*a + b*b);
wing_tip_dihedral_angle = atan2(a,b);
wing_tip_le_span = wing_tip_span - wing_tip_radius;
wing_tip_rib_chord = wing_chord - wing_tip_radius - spar_size;
