//####################################
// Math-Magik A6 - Design Constraints
// (c) 2021 by Roie R. Black
//====================================
ms_length = 6.125;
ms_thickness = 0.070;
ms_height = 0.190;
ms_front_height = 0.160;
ms_rear_height = 0.160;

tb_length = 8.5;
tb_front_height = 1/8;
tb_rear_height = 1/16;
tb_thickness = 1/16;
tb_x_offset = 3/8;
tb_z_offset = 3/16;

wing_span = 15.0;
wing_chord = 2.0;
wing_center_span = 8.0;
wing_rib_camber = 4.0;
wing_tip_radius = 1.0;
wing_tip_dihedral = 1.0;
wing_y_offset = -0.5;
wing_x_offset = 1.25;
wing_elevation = 1.0;

stab_span = 10.0;
stab_chord = 1.5;
stab_center_span = 5.0;
stab_rib_camber = 2.0;
stab_tip_radius = 0.75;
stab_x_offset = ms_length + tb_length
	- stab_chord - tb_x_offset;

fin_chord = 2.0;
fin_span = 1.0;
fin_tip_radius = 0.5;

post_diameter = 1/16;
prop_x_offset = 3/16;
prop_z_offset = 7/32;
prop_pitch_angle = 45;

tube_height = 1/8;
tube_thickness = 1/64;
