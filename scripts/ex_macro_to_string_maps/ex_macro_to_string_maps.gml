

range_to_string = ds_map_create();
range_to_string[? MELEE] = "M";
range_to_string[? RANGED] = "R";

player_to_string = ds_map_create();
player_to_string[? PLAYER1] = "Player 1";
player_to_string[? PLAYER2] = "Player 2";

rarity_to_string = ds_map_create();
rarity_to_string[? sp_basic_rarity] = "Basic";
rarity_to_string[? sp_common_rarity] = "Common";
rarity_to_string[? sp_epic_rarity] = "Epic";

tag_to_string = ds_map_create();
tag_to_string[? TROOP] = "Troop";
tag_to_string[? VEHICLE] = "Vehicle";
tag_to_string[? STRUCTURE] = "Structure";
tag_to_string[? MARINE] = "Marine";
tag_to_string[? SCOUT] = "Scout";
tag_to_string[? ELITE] = "Elite";
tag_to_string[? WALKER] = "Walker";
tag_to_string[? HUNTER] = "Hunter";
tag_to_string[? CLERIC] = "Cleric";
tag_to_string[? SOLDIER] = "Soldier";
tag_to_string[? CRUSADER] = "Crusader";
tag_to_string[? COMMANDCENTER] = "Comm Center";
