/// @description Insert description here
// You can write your code in this editor
neighbors = noone;
model = noone;
passable = true;
//if true, this node is in range of an attacking or moving model
attack_node = false;
move_node = false;
target_node = false;
//this node contains the model currently attacking or currently moving
attacking_node = false;
moving_node = false;
targetting_node = false;
//distance from a currently attacking or moving model
g_val_att = 0;
g_val = 0;
g_val_target = 0;
//next closest node to an attacking or moving model
root_att = noone;
root = noone;
root_target = noone;

//Grid position on control object
ex = 0;
wy = 0;