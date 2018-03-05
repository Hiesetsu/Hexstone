/// @description Insert description here
// You can write your code in this editor
if(room == rm_victoryScreen){
	alarm[1] = room_speed*3;
	var m = instance_create_depth(room_width/2, room_height/2, 0, ob_persistantMessage);
m.message = player_to_string[?winner]+" wins!!";
}
