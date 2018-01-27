/// @description Insert description here
// You can write your code in this editor
#macro DEBUG true
#macro CONTROL ob_controller
current_turn = PLAYER2;
turn_number = 0;
moveable_tiles = ds_list_create();
attackable_tiles = ds_list_create();
targetable_tiles = ds_list_create();

hovered_tile = noone;

tile_list = noone;

attacker = noone;
defender = noone;
attacking_occurring = false;
mover = noone;
moving_occurring = false;
targeter = noone;
targeting_occuring = false;

taunt_in_range = false;

debug_x = room_width-280;
debug_y = 20;
linebreak = 20;

crosshair = instance_create_depth(x, y, depth, ob_crosshair);
crosshair.visible = false;
move_indicator = instance_create_depth(x, y, depth, ob_move_indicator);
move_indicator.visible = false;
alarm[0] = 1;
#macro COMMANDCENTER 12

//Tags
#macro TROOP 0
#macro VEHICLE 1
#macro STRUCTURE 2

#macro MARINE 3
#macro SCOUT 4
#macro ELITE 5
#macro WALKER 6
#macro DRONE = 11

#macro HUNTER 7
#macro CLERIC 8
#macro SOLDIER 9
#macro CRUSADER 10

//Floating Messages
#macro TAUNT_MESSAGE "A Model with Taunt is in the way"

ex_macro_to_string_maps();

