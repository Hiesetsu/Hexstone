/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Comm Center";
art = sp_command_centerP1;
full_art = noone;

comm_center = true;

att_base = 0;
hp_base = 30;
points_base = 0;

type = STRUCTURE;

combat_range = RANGED;

immobile = true;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_commCenter;