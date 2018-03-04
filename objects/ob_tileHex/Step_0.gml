/// @description Insert description here
// You can write your code in this editor
if(target)
{
	if(CONTROL.state == TARGET_MOVE){
		if(model == noone)
			image_blend = merge_color(image_blend, col_moveTarget, 0.05);
	}
	else if(CONTROL.state == TARGET_ATTACK){
		if(model == noone)
			image_blend = merge_color(image_blend, col_attackVacant, 0.05);
		else 
			image_blend = merge_color(image_blend, col_attackTarget, 0.05);
	}
	else if(CONTROL.state == PLAY_MODEL){
		image_blend = merge_color(image_blend, col_summonTarget, 0.05);
	}
	else if(CONTROL.state == TARGET_BATTLECRY){
		image_blend = merge_color(image_blend, col_battlecryTarget, 0.05);
	}
}else if(hovered){
		if(model != noone)
			model.image_blend = merge_color(model.image_blend, model.highlight_color, 0.05);
}



