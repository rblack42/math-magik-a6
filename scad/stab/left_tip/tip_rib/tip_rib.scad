//########################################
// tip_rib.scad
// (c) 2021 - Roie R. Black
//****************************************
include <../../stab_data.scad>

use <MMlib/square_spar.scad>

module tip_rib() {
      square_spar(stab_tip_rib_chord, spar_size);
}

tip_rib();
