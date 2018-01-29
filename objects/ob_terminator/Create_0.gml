/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Terminator";
art = sp_terminator;
full_art = sp_terminatorFullart;
rarity = sp_common_rarity;
card_text = "Deepstrike.";

att_base = 4;
hp_base = 5;
points_base = 5;

type = TROOP;
tribe = ELITE;

combat_range = MELEE;

deepstrike = true;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;