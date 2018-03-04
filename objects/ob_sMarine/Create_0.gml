/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Skirmisher";
art = sp_sMarine;
full_art = sp_sMarineFullart;
rarity = sp_common_rarity;
card_text = "Shielded.";

att_base = 4;
hp_base = 3;
points_base = 4;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;

shielded = true;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_sMarine;