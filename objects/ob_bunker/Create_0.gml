/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Bunker";
art = sp_bunker;
full_art = sp_bunkerFullart;
rarity = sp_common_rarity;
card_text = "Immobile. Deathrattle: Summon a 2/3 Marine";

att_base = 2;
hp_base = 3;
points_base = 4;

type = STRUCTURE;
tribe = noone;

combat_range = RANGED;

deathrattle = dr_bunker;

immobile = true;
deepstrike = true;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;