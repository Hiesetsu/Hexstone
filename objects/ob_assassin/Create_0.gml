/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Assassin";
art = sp_assassin;
full_art = sp_assassinFullart;
rarity = sp_common_rarity;
card_text = "Lethal. Flanking.";

att_base = 1;
hp_base = 2;
points_base = 3;

type = TROOP;
tribe = SCOUT;

lethal = true;
stealthed = true;
flanking = true;

combat_range = MELEE;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;