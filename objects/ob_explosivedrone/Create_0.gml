/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "Explosive Drone";
art = sp_explosivedrone;
full_art = sp_explosivedroneFullart;
rarity = sp_common_rarity;

att_base = 1;
hp_base = 1;
points_base = 1;

type = DRONE;
tribe = noone;

combat_range = MELEE;
deathrattle = dr_explosivedrone;

card_text = "Deathrattle: deal 1 damage to all models";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = ob_explosivedrone;