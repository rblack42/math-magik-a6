//########################################
// tip_rib.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../../wing_data.scad>

use <MMlib/square_spar.scad>

module tip_rib() {
      square_spar(wing_tip_rib_chord, spar_size);
}

tip_rib();
