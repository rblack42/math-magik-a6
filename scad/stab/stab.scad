//###################################################
// stab.scad
// (c) 2021 - Roie R. Black
//***************************************************
include <./stab_data.scad>
include <./stab_pos.scad>

use <MMlib/position.scad>

use <./center/center.scad>
use <./right_tip/right_tip.scad>
use <./left_tip/left_tip.scad>
use <./stab_mount/stab_mount.scad>


module stab() {
    align(stab_right_tip_pos) right_tip();
    align(stab_center_pos) center();
    align(stab_left_tip_pos) left_tip();
    align(stab_mount_pos) stab_mount();
}

stab();

