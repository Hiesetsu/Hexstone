///@function ex_hide_card(model)
///@param {real} model
var _m = argument0;

if(_m.card != noone)
{
		_m.image_blend = model.color;
		_m.card.visible = false;
		_m.alarm[1] = -1;
}