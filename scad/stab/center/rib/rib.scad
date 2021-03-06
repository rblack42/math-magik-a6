//###################################################
// rib.scad
// (c) 2021 - Roie R. Black
//***************************************************
include <../../stab_data.scad>

use <MMlib/circle_template_rib.scad>

module rib() {
    circle_template_rib(stab_rib_chord, stab_rib_camber, spar_size, rib_thickness);
}

rib();

