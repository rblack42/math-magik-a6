//########################################
// center_pos.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../stab_data.scad>

le_pos = [0,0,0,0,0,0];
te_pos = [stab_chord - spar_size,0,0,0,0,0];
rib1_pos = [spar_size,-stab_center_span/2+rib_thickness/2,0,0,0,0];
rib2_pos = [spar_size,-stab_center_span/4,0,0,0,0];
rib3_pos = [spar_size,0,0,0,0,0];
rib4_pos = [spar_size,stab_center_span/4,0,0,0,0];
rib5_pos = [spar_size,stab_center_span/2-rib_thickness/2,0,0,0,0];
covering_pos = [0,-stab_center_span/2,spar_size,0,0,0];
