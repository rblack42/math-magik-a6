//#####################################
// motor-stick-data.scad
// (c) 2021 by Roie R. Black
//*************************************
include <../fuselage_data.scad>

ms_x1 = wing_x_offset - post_diameter;
ms_x2 = ms_x1 + wing_chord + post_diameter;

ms_points = [
	[0,0],
	[ms_length,0],
	[ms_length,ms_rear_height],
	[ms_x2,ms_height],
	[ms_x1,ms_height],
	[0,ms_front_height],
	[0,0]
];
