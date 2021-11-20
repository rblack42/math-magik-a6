//####################################
// math-magik-a6_pos.scad
// (c) 2021 - Roie R. Black
//************************************
include <math_magik_a6_data.scad>
//include <./materials.scad>
//include <./fuselage/thrust_bearing/thrust_bearing_data.scad>
//include <./fuselage/motor_stick/motor_stick_data.scad>
//include <./fuselage/tail_boom/tail_boom_data.scad>


fuse_pos = [0,0,0,0,0,0];
wing_pos = [wing_x_offset,wing_y_offset,wing_elevation,0,0,0];

stab_pos = [
  stab_x_offset,
  tb_thickness/2,
  tb_z_offset + tb_front_height,
  0,
  0,
  0];

prop_pos = [-prop_x_offset-1/32, 0, -prop_z_offset, -40,0,0];
//echo(prop_x_offset);
