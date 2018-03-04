/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Shock Marine";
art = sp_tMarine;
full_art = sp_tMarineFullart;
rarity = sp_common_rarity;
card_text = "-Stun- any model damaged by this one.";

att_base = 3;
hp_base = 6;
points_base = 4;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;

//Stuns any model it damages

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;