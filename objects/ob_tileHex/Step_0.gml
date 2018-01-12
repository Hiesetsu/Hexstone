/// @description Insert description here
// You can write your code in this editor
if(move_node)
{
	if(model == noone)
			image_blend = merge_color(image_blend, endColor, 0.05);
}else if(attack_node){
	if(model == noone)
			image_blend = merge_color(image_blend, attackColorVacant, 0.05);
		else 
			image_blend = merge_color(image_blend, attackColor, 0.05);
}else if(hovered){
	if(colorDirection = 0)
	{
		if(model != noone)
			model.image_blend = merge_color(model.image_blend, model.highlight_color, 0.05);
		//else
			//image_blend = merge_color(image_blend, endColor, 0.05);
	}
	else
	{
		image_blend = merge_color(image_blend, startColor, 0.05);
	}
	if(image_blend == startColor)
		colorDirection = 0;
	else if (image_blend == endColor)
		colorDirection = 1;
}

