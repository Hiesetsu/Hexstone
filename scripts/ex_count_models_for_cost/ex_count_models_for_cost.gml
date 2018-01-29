///@func ex_count_models_for_cost(cost, list)
///@param {real} cost
///@param {real} list
var _cost = argument0;
var _list = argument1;
var _num = 0;
var _i;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# _cost+_i, AL_NUMBER];
}

return _num;