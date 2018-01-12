/// @description Insert description here
// You can write your code in this editor
neighbors = ds_list_create();
model = noone;
passable = true;
//if true, this node is in range of an attacking model
attack_node = false;
//this node is in range of a moving model
move_node = false;
//this node contains the model currently attacking
attacking_node = false;
//this node contains the model currently moving
moving_node = false;
//distance from a currently attacking or moving model
g_val_att = 0;
g_val = 0
//next closest node to an attacking or moving model
root_att = noone;
root = noone;

//Grid position on control object
ex = 0;
wy = 0;