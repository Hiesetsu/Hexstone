/// @description Insert description here
// You can write your code in this editor
draw_self();
if(image_speed == 0){
	ex_draw_text_centered(x, y, "End Turn", c_black, fo_belwe_large);
}
ex_draw_text_shadowed(x+sprite_width/2, y-8, string(floor((turn_time-timer)/room_speed)), c_white, fo_belwe_large, 1);
