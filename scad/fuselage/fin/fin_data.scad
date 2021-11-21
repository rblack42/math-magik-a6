//#####################################
// fin-data.scad
// (c) 2021 by Roie R. Black
//=====================================
include <MMlib/colors.scad>
include <../fuselage_data.scad>

fin_color = WOOD_Balsa;

//-------------------------------------
// calculated values

fin_le_length = fin_span - fin_tip_radius - spar_size;
fin_te_length = fin_span -2*spar_size;

