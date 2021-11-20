//#####################################
// rear-hook-data.scad
// (c) 2021 - Roie R. Black
//*************************************
include <MMlib/colors.scad>
include <../fuselage_data.scad>

rear_hook_color = METAL_Steel;

wire_diameter = 0.025;
stub_length = 1/8;

// calculated values for hook

ka = sin(45);
r = wire_diameter/2;
bend_radius = 1.5*wire_diameter;
rh_height = ms_rear_height;
hook_offset = prop_z_offset;
hook_side = (hook_offset - 2*bend_radius*ka)/ka;

a = stub_length;
b = rh_height - wire_diameter;
c = hook_side;

p1 = [-bend_radius,0,b];
p2 = [-bend_radius,0,0];
p3 = p2 + [bend_radius*ka,0,-bend_radius*ka];
p4 = p3 + [
  -hook_side*ka,
  0,
  -hook_side*ka] + [bend_radius*ka,
  0,
  -bend_radius*ka
];
p5 = p4 + [-bend_radius*ka,0,-bend_radius*ka];

density = 501.12;

