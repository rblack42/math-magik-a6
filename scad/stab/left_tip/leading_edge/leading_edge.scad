//#############################################
// leading_edge.scad = stab left tip section
// (c) 2021 by Roie R. Black
//=============================================
include <../../stab_data.scad>
use <MMlib/square_spar.scad>


module leading_edge() {
		square_spar(stab_tip_le_span,spar_size);
}

//==============================================
// display this shape
leading_edge();


