///@func ex_count_models_for_cost(list)
///@param {real} list
var _list = argument0;
var _num = 0;
var _total = 0;
var _i;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# AL_1COST+_i, AL_NUMBER];
}
_total += _num*1;
_num=0;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# AL_2COST+_i, AL_NUMBER];
}
_total += _num*2;
_num=0;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# AL_3COST+_i, AL_NUMBER];
}
_total += _num*3;
_num=0;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# AL_4COST+_i, AL_NUMBER];
}
_total += _num*4;
_num=0;
for(_i = 0; _i<4; _i++)
{
	_num += _list[# AL_5UPCOST+_i, AL_NUMBER];
	var _m = _list[# AL_5UPCOST+_i, AL_MODEL];
	var _p = object_get_parent(_m);
	if(_p == ob_model){
		_m = instance_create_depth(x, y, 0, _m);
		_total+=_num*_m.points_effective;
		_num = 0;
		instance_destroy(_m);
	}
}
return _total;