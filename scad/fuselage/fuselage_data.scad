//###########################################
// fuselage-data.scad
// (c) 2021 - Roie R. Black
//*******************************************
include <../math_magik_a6_data.scad>
include <../constraints.scad>
include <../materials.scad>
//include <thrust_bearing/thrust_bearing_data.scad>
//include <motor_stick/motor_stick_data.scad>
//include <../prop/prop_data.scad>

// wing position dimensions
wing_offset = 1.25;
wing_elevation = 1;

// tail boom data

tb_front_height = 1/8;
tb_rear_height = 1/16;
tb_thickness = 1/16;

tail_boom_overlap = 1/8;
tail_boom_length = 8.5;
