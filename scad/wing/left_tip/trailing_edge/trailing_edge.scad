//#####################################
// te.scad = wing center section
// (c) 2021 by Roie R. Black
//=====================================
include <../../wing_data.scad>
use <MMlib/square_spar.scad>

module trailing_edge() {
		square_spar(wing_tip_span,spar_size);
}

//====================================
// display this shape
trailing_edge();


