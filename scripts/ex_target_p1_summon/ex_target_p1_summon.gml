var _i = 0;
var _j = 1;
for(_i = 0; _i<9; _i++)
{
	var _t = CONTROL.tile_list[# _i, _j+5];
	if(!_t.model)
	{
		_t.target = true;
	}
	_j = _j^1;
}
with(ob_commCenter)
{
	if(owner == PLAYER1)
	{
		for(_i = 0; _i<ds_list_size(tile.neighbors); _i++)
		{
			var _t = tile.neighbors[|_i];
			if(!_t.model)
			{
				_t.target = true;
			}
		}
	}
}