/// @description Insert description here
// You can write your code in this editor
var top = y-sprite_height/2
var left = x-sprite_width/2;
var button_width = sprite_get_width(sp_cost_button);
open = false;
opened_cost = 0;
buttons = ds_list_create();
costY = top+10+sprite_get_height(sp_cost_button)/2;
cost_1X = left+button_width;
cost_2X = cost_1X+16+button_width;
cost_3X = cost_2X+16+button_width;
cost_4X = cost_3X+16+button_width;
cost_5PlusX = cost_4X+16+button_width;
var b = instance_create_depth(cost_1X, costY, depth-1, ob_cost_button);
b.cost = 1;
b.box = id;
buttons[|0]=b;
var b = instance_create_depth(cost_2X, costY, depth-1, ob_cost_button);
b.cost = 2;
b.box = id;
buttons[|1]=b;
var b = instance_create_depth(cost_3X, costY, depth-1, ob_cost_button);
b.cost = 3;
b.box = id;
buttons[|2]=b;
var b = instance_create_depth(cost_4X, costY, depth-1, ob_cost_button);
b.cost = 4;
b.box = id;
buttons[|3]=b;
var b = instance_create_depth(cost_5PlusX, costY, depth-1, ob_cost_button);
b.cost = 5;
b.box = id;
buttons[|4]=b;

