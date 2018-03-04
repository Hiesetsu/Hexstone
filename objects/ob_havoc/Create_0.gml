/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Havoc";
art = sp_havoc;
full_art = sp_havocFullart;
rarity = sp_common_rarity;

att_base = 4;
hp_base = 3;
points_base = 3;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;
battlecry = bc_havoc;

card_text = "Battlecry: deal 1 damage to a random enemy";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_havoc;