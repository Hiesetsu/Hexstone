/// @description Insert description here
// You can write your code in this editor
ex_change_turn();
if(ob_controller.current_turn == PLAYER1)
{
	path_start(path_player1, 120, path_action_stop, true);
}else{
	path_start(path_player2, 120, path_action_stop, true);
}
image_blend = color;
image_speed = room_speed/10;
ex_clear_nodes();