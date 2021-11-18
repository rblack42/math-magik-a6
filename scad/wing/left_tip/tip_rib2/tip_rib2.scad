//###################################################
// tip_rib2.scad
// (c) 2021 - Roie R. Black
//***************************************************
include <../../wing_data.scad>

use <MMlib/circle_template_rib.scad>

module tip_rib2() {
    circle_template_rib(rib_chord, rib_camber, spar_size, rib_thickness);
}

tip_rib2();

