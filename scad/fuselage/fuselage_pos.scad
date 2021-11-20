//#####################################
// fuselage_pos.scad
// (c) 2021 by Roie R. Black
//*************************************
include <./fuselage_data.scad>

// motor stick positioning
ms_pos = [
  0,
  ms_thickness/2,
  0,
  90,
  0,
  0
];

// tail boom positioning
tb_pos = [
  ms_length - tb_x_offset,
  -ms_thickness/2+tb_thickness/2,
  tb_z_offset,
  0,
  0,
  0];

fin_pos = [
  ms_length + tb_length - tb_x_offset - fin_chord,
  spar_size/2,
  tb_z_offset + spar_size,
  90,
  0,
  0
];

// rear hook positioning
rh_pos = [ms_length,0,0,0,0,0];

// thrust bearing positioning
thb_pos = [-3/16,0,-prop_z_offset,0,0,0];

fwp_pos = [
  wing_x_offset - post_diameter/2 - tube_thickness,
  -ms_thickness,
  0,
  0,0,0
];
rwp_pos = [
  wing_x_offset + wing_chord + post_diameter/2 + tube_thickness,
  -ms_thickness,
  0,
  0,0,0
];

sp_pos = [
  ms_length + tb_length - tb_x_offset + post_diameter/2 + tube_thickness,
  0,
  tb_z_offset + tube_height,
  0,0,0
];
