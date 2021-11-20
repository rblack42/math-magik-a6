//#####################################
// te.scad = stab center section
// (c) 2021 by Roie R. Black
//=====================================
include <../../stab_data.scad>
use <MMlib/square_spar.scad>

module trailing_edge() {
		square_spar(stab_tip_span,spar_size);
}

//====================================
// display this shape
trailing_edge();


