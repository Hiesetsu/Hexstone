/// @description Insert description here
// You can write your code in this editor
if(hand){
	if(!hand.selected_card&&(owner==PLAYER1||room!=rm_gameBoardNetworking)){
		if(hand.hovered_card==id||hand.hovered_card==noone){
			hand.selected_card = id;
			alarm[0] = 10;
			image_xscale = hover_scale;
			image_yscale = hover_scale;
		}
	}
}