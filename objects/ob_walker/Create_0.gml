/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Walker";
art = sp_walker;
full_art = sp_walkerFullart;
rarity = sp_common_rarity;
card_text = "Armored.";

att_base = 5;
hp_base = 5;
points_base = 5;

type = VEHICLE;
tribe = WALKER;

combat_range = MELEE;

armored = true;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;