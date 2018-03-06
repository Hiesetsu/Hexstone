/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

name = "  Standard Bearer";
art = sp_standardBearer;
full_art = sp_standardBearerFullArt;
rarity = sp_common_rarity;

att_base = 1;
hp_base = 3;
points_base = 3;

type = TROOP;
tribe = MARINE;

combat_range = MELEE;
deepstrike=true;
battlecry = bc_standardBearer;
auras_stat = ds_list_create();
ds_list_add(auras_stat, au_standardBearer);

card_text = "Deepstrike.\n Adjacent Marines and Scouts have +1/+1";

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;