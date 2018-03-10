/// @description Insert description here
// You can write your code in this editor
instance_destroy(mask);
if(hand){
	if(hand.hovered_card==id){
		hand.hovered_card=noone;
	}
	if(hand.selected_card==id){
		hand.selected_card=noone;
	}
}