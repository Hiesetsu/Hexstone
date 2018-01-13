/// @description Insert description here
// You can write your code in this editor
draw_self();
if(open)
{
	var message = opened_cost == 5? "5+": string(opened_cost);
	ex_draw_text_centered_shadowed(x, y, "Cost "+message+" models being shown", c_white, fo_belwe_med, 1);
}
