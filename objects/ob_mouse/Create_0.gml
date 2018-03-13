/// @description Insert description here
// You can write your code in this editor
#macro MOUSE ob_mouse
var _self = id;
with(object_index){
	if(id!=_self){
		instance_destroy(_self);
	}
}

hovered_tile = noone;

crosshair = instance_create_depth(x, y, depth, ob_crosshair);
crosshair.visible = false;
move_indicator = instance_create_depth(x, y, depth, ob_move_indicator);
move_indicator.visible = false;

