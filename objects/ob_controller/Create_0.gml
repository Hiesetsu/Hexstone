/// @description Insert description here
// You can write your code in this editor
#macro DEBUG true
#macro CONTROL ob_controller
current_turn = PLAYER2;
turn_number = 0;
moveable_tiles = ds_list_create();
attackable_tiles = ds_list_create();

hovered_tile = noone;

attacker = noone;
target = noone;
targeting_occurring = false;
mover = noone;
moving_occurring = false;

taunt_in_range = false;

debug_x = room_width-280;
debug_y = 20;
linebreak = 20;

crosshair = instance_create_depth(x, y, depth, ob_crosshair);
crosshair.visible = false;
move_indicator = instance_create_depth(x, y, depth, ob_move_indicator);
move_indicator.visible = false;
alarm[0] = 1;
//Macros:
#macro MARINE 0
#macro SCOUT  1
#macro TMARINE 2
#macro SMARINE 3
#macro COMMANDCENTER 4

#macro TAUNT_MESSAGE "A Model with Taunt is in the way"

ex_macro_to_string_maps();

