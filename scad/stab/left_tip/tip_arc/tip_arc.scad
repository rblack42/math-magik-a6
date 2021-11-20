//########################################
// tip_arc.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../../stab_data.scad>

use <MMlib/circular_arc_spar.scad>

module tip_arc(r=stab_tip_radius, size=spar_size) {
    circular_arc_spar(r, 180,270, size,size);
}

tip_arc();

