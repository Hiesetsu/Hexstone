// Inherit the parent event
event_inherited();

name = "Brave Scout";
art = sp_braveScout;
full_art = sp_braveScoutFullArt;
card_text = "Flanking. Has +1 Att while you control an Elite.";

att_base = 1;
hp_base = 1;
points_base = 1;

type = TROOP;
tribe = SCOUT;

combat_range = RANGED;
flanking = true;

auras_stat = ds_list_create();
ds_list_add(auras_stat, au_braveScout);

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;
MID = object_index;