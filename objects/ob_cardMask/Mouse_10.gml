/// @description Insert description here
// You can write your code in this editor
if(!card){
	instance_destroy();
	return;
}
with(card){
	if(hand){
		if(!hand.selected_card){
				hand.hovered_card = id;
				image_xscale = hover_scale;
				image_yscale = hover_scale;
		}
	}
}