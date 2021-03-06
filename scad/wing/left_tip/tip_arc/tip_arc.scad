//########################################
// tip_arc.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../../wing_data.scad>

use <MMlib/circular_arc_spar.scad>

module tip_arc(r=wing_tip_radius, size=spar_size) {
    circular_arc_spar(r, 180,270, size,size);
}

tip_arc();

