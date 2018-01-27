/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Defender";
art = sp_tMarine;
full_art = sp_tMarineFullart;
rarity = sp_common_rarity;

att_base = 1;
hp_base = 5;
points_base = 2;

type = TROOP;
tribe = MARINE;

taunt = true;

combat_range = MELEE;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_tMarine;