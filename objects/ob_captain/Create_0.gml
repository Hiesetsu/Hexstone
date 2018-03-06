/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Captain";
art = sp_captain;
full_art = sp_captainFullart;
rarity = sp_epic_rarity;

att_base = 6;
hp_base = 6;
points_base = 7;

type = TROOP;
tribe = ELITE;

combat_range = MELEE;
battlecry = bc_captain;

card_text = "Battlecry: give friendly Scouts and Marines +1/+1";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;