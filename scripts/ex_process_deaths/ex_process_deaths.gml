///@function ex_process_deaths()

with(ob_model)
{
	if((mortally_wounded || pending_destroyed) && !dead)
	{
		dead = true;
		if(owner = PLAYER1)
			CONTROL.player1_model_count--;
		else
			CONTROL.player2_model_count--;
		alarm[REMOVEALARM] = room_speed;
		tile.model = noone;
		var _p = path_add();
		var _v = choose(-4, -2, 0, 2, 4);
		path_add_point(_p, x+3, y, 20+_v);
		path_add_point(_p, x-3, y, 20+_v);
		path_start(_p, 20+_v, path_action_reverse, true);
	}
}
