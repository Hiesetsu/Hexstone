/// @description Insert description here
// You can write your code in this editor
hovered = false;
if(!move_node&&!attack_node)
	image_blend = startColor;
if(model != noone)
{
	model.image_blend = model.color;
	model.card.visible = false;
	model.alarm[1] = -1;
}