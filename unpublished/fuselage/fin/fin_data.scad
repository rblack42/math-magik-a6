//#####################################
// fin-data.scad
// (c) 2021 by Roie R. Black
//=====================================
include <colors.scad>

fin_span = 1.5;
fin_chord = 2;
fin_radius = 0.75;
spar_size = 1/16;
fin_color = WOOD_Balsa;

//-------------------------------------
// calculated values

fin_le_length = fin_span - fin_radius - spar_size;
fin_te_length = fin_span -2*spar_size;

