/// @description Insert description here
// You can write your code in this editor
var top = y-sprite_height/2
var left = x-sprite_width/2;
var button_width = sprite_get_width(sp_cost_button);
//////////////////////////////
open = false;
opened_cost = 0;
points_remaining = 0;
points_cap = 80;
buttons = ds_list_create();
owner = PLAYER1;
/////////////////////////////

play_model_buttons = array_create(4);
var b = instance_create_depth(left+43, top+27+5+24, depth-1, ob_play_model);
b.visible = false;
play_model_buttons[0]=b;
b=instance_create_depth(left+43+100+43, top+27+5+24, depth-1, ob_play_model);
b.visible = false;
play_model_buttons[1]=b;
b=instance_create_depth(left+43, top+27+5+24+48+24, depth-1, ob_play_model);
b.visible = false;
play_model_buttons[2]=b;
b=instance_create_depth(left+43+100+43, top+27+5+24+48+24, depth-1, ob_play_model);
b.visible = false;
play_model_buttons[3]=b;

#macro AL_1COST 0
#macro AL_2COST 4
#macro AL_3COST 8
#macro AL_4COST 12
#macro AL_5UPCOST 16
#macro AL_MODEL 0
#macro AL_NUMBER 1
#macro AL_ACTIVE 2
army_list = ds_grid_create(20, 4);
ds_grid_clear(army_list, 0);
ex_add_model_to_box(ob_scout, id, 4);
ex_add_model_to_box(ob_braveScout, id, 2);
ex_add_model_to_box(ob_explosivedrone, id, 2);
ex_add_model_to_box(ob_marine, id, 4);
ex_add_model_to_box(ob_tMarine, id, 2);
ex_add_model_to_box(ob_assassin, id, 2);
ex_add_model_to_box(ob_devastator, id, 2);
ex_add_model_to_box(ob_standardBearer, id, 2);
ex_add_model_to_box(ob_havoc, id, 2);
ex_add_model_to_box(ob_assaultMarine, id, 2);
ex_add_model_to_box(ob_sMarine, id, 2);
ex_add_model_to_box(ob_bunker, id, 2);
ex_add_model_to_box(ob_terminator, id, 2);
ex_add_model_to_box(ob_walker, id, 2);
ex_add_model_to_box(ob_captain, id, 1);
//army_list[# AL_1COST, AL_MODEL] = ob_scout;
//army_list[# AL_1COST, AL_NUMBER] = 4;
//army_list[# AL_2COST, AL_MODEL] = ob_marine;
//army_list[# AL_2COST, AL_NUMBER] = 4;
//army_list[# (AL_2COST+1), AL_MODEL] = ob_tMarine;
//army_list[# (AL_2COST+1), AL_NUMBER] = 2;

//army_list[# AL_3COST, AL_MODEL] = ob_devastator;
//army_list[# AL_3COST, AL_NUMBER] = 2;
//army_list[# AL_3COST+1, AL_MODEL] = ob_havoc;
//army_list[# AL_3COST+1, AL_NUMBER] = 2;

//army_list[# (AL_4COST), AL_MODEL] = ob_sMarine;
//army_list[# (AL_4COST), AL_NUMBER] = 2;

//army_list[# (AL_5UPCOST), AL_MODEL] = ob_walker;
//army_list[# (AL_5UPCOST), AL_NUMBER] = 2;
//army_list[# (AL_5UPCOST+1), AL_MODEL] = ob_terminator;
//army_list[# (AL_5UPCOST+1), AL_NUMBER] = 2;

points_remaining = 0;
alarm[0] = 1;
////////////////////////////////////////////////////////////////////////////////////////
costY = top+20+sprite_get_height(sp_cost_button)/2;
cost_1X = left+button_width;
cost_2X = cost_1X+16+button_width;
cost_3X = cost_2X+16+button_width;
cost_4X = cost_3X+16+button_width;
cost_5PlusX = cost_4X+16+button_width;

b = instance_create_depth(cost_1X, costY, depth-1, ob_cost_button);
b.cost = 1;
b.box = id;
b.number = ex_count_models_for_cost(AL_1COST, army_list);
buttons[|0]=b;
var b = instance_create_depth(cost_2X, costY, depth-1, ob_cost_button);
b.cost = 2;
b.box = id;
b.number = ex_count_models_for_cost(AL_2COST, army_list);
buttons[|1]=b;
var b = instance_create_depth(cost_3X, costY, depth-1, ob_cost_button);
b.cost = 3;
b.box = id;
b.number = ex_count_models_for_cost(AL_3COST, army_list);
buttons[|2]=b;
var b = instance_create_depth(cost_4X, costY, depth-1, ob_cost_button);
b.cost = 4;
b.box = id;
b.number = ex_count_models_for_cost(AL_4COST, army_list);
buttons[|3]=b;
var b = instance_create_depth(cost_5PlusX, costY, depth-1, ob_cost_button);
b.cost = 5;
b.box = id;
b.number = ex_count_models_for_cost(AL_5UPCOST, army_list);
buttons[|4]=b;

model_countY = sprite_height/2+sprite_get_height(sp_manabar)+20;











































