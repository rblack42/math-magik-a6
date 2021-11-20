//###################################################
// rib.scad
// (c) 2021 - Roie R. Black
//***************************************************
include <../../wing_data.scad>

use <MMlib/circle_template_rib.scad>

module rib() {
    circle_template_rib(wing_rib_chord, wing_rib_camber, spar_size, rib_thickness);
}

rib();

