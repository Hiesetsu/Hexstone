/// @description Insert description here
// You can write your code in this editor
if(!card){
	instance_destroy();
	return;
}
with(card){
	if(hand){
		if(!hand.selected_card&&(owner==PLAYER1||room!=rm_gameBoardNetworking)){
				hand.hovered_card = id;
				image_xscale = hover_scale;
				image_yscale = hover_scale;
		}
	}
}