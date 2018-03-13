/// @description Insert description here
// You can write your code in this editor
timer++;
if(timer>turn_time){
	ex_clear_nodes();
	ex_change_turn();
	image_blend = color;
	image_speed = room_speed/10;
}