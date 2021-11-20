//#############################################
// leading_edge.scad = wing left tip section
// (c) 2021 by Roie R. Black
//=============================================
include <../../wing_data.scad>
use <MMlib/square_spar.scad>


module leading_edge() {
		square_spar(wing_tip_le_span,spar_size);
}

//==============================================
// display this shape
leading_edge();


