/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Assault Marine";
art = sp_assaultMarine;
full_art = sp_assaultFullart;
rarity = sp_common_rarity;

att_base = 3;
hp_base = 3;
points_base = 4;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;
ambush = true;
blitz = true;

card_text = "Blitz. Ambush.";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;