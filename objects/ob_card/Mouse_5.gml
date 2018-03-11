/// @description Insert description here
// You can write your code in this editor
if(hand){
	if(hand.selected_card==id){
		hand.selected_card = noone;
		hand.hovered_card = noone;
		image_xscale = hand.hand_scale;
		image_yscale = hand.hand_scale;
		image_alpha = 1;
	}
}