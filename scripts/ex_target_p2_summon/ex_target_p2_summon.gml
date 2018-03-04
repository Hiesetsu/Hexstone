
var _i = 0;
var _j = 0;
for(_i = 0; _i<9; _i++)
{
	var _t = CONTROL.tile_list[# _i, _j];
	if(!_t.model)
	{
		_t.play_node = true;
	}
}
with(ob_commCenter)
{
	if(owner == PLAYER2)
	{
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