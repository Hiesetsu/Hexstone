/// @description Insert description here
// You can write your code in this editor
draw_self();
//var message = cost == 5? "5+": string(cost);
//ex_draw_text_centered_shadowed(x, y, message, c_white, fo_belwe_large, 1);
if(number>0 && box)
{
	if(box.owner == PLAYER1 && room == rm_gameBoardNetworking){
		ex_draw_text_centered_shadowed(x, y, "x"+string(number), c_white, fo_belwe_med, 1);
	}
	else if(room != rm_gameBoardNetworking&&CONTROL.current_turn==box.owner){
		ex_draw_text_centered_shadowed(x, y, "x"+string(number), c_white, fo_belwe_med, 1);
	}
}