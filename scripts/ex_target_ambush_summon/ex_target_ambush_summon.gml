///@function ex_target_ambush_summon()
with(ob_model)
{
	if(CONTROL.current_turn != owner && !comm_center)
	{
		var _i = 0;
		for(_i = 0; _i<ds_list_size(tile.neighbors); _i++)
		{
			var _t = tile.neighbors[|_i];
			if(!_t.model)
			{
				_t.play_node = true;
			}
		}
	}
}