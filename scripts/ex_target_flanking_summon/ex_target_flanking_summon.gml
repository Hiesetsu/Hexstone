///@function ex_target_flanking_summon()

var _i = 0;
var _j = 0;

for(_i = 0; _i<14; _i++)
{
	if(_i>6)
	{
		_j = 8;
	}
	var _t = CONTROL.tile_list[# _j, _i%7];
	if(!_t.model)
	{
		_t.play_node = true;
	}
}