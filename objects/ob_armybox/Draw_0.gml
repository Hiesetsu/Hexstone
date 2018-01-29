/// @description Insert description here
// You can write your code in this editor
draw_self();
if(open)
{
	var message = opened_cost == 5? "5+": string(opened_cost);
	//ex_draw_text_centered_shadowed(x, y, "Cost "+message+" models being shown", c_white, fo_belwe_med, 1);
}
else
{
	ex_draw_text_centered_shadowed(x, y+48, string(points_remaining)+"/"+string(points_cap), c_white, fo_belwe_large, 1);
}
var count = "/";
if(owner == PLAYER1){
	count = string(CONTROL.player1_model_count)+"/"+string(CONTROL.model_limit)
}
else{
	count = string(CONTROL.player2_model_count)+"/"+string(CONTROL.model_limit)
}
var yPos = y+model_countY*(owner==PLAYER1?-1:1);
ex_draw_text_centered_shadowed(x, yPos, count, c_white, fo_belwe_large, 1);

