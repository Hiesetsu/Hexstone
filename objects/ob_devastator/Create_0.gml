/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Devastator";
art = sp_devastator;
full_art = sp_devastatorFullart;
rarity = sp_common_rarity;

att_base = 3;
hp_base = 2;
points_base = 3;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;
battlecry = bc_devastator;

card_text = "Battlecry: deal 1 damage";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_devastator;