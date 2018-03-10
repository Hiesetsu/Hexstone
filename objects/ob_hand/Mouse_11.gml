/// @description Insert description here
// You can write your code in this editor
if(selected_card){
	selected_card.image_xscale = hand_scale;
	selected_card.image_yscale = hand_scale;
	selected_card = noone;
	hovered_card = noone;
}
else if(hovered_card){
	hovered_card = noone;
}