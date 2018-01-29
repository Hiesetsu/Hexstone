///@func ex_num_models(play_model_button, list, cost, slot)
///@param {real} play_model_button
///@param {real} list
///@param {real} cost
///@param {real} slot

var _button = argument0;
var _list = argument1;
var _cost = argument2;
var _slot = argument3;
switch(_cost)
{
	case 1:
		_cost = AL_1COST;
	break;
	case 2:
		_cost = AL_2COST;
	break;
	case 3:
		_cost = AL_3COST;
	break;
	case 4:
		_cost = AL_4COST;
	break;
	case 5:
		_cost = AL_5UPCOST;
	break;
}
return (_list[#(_cost+_slot), AL_NUMBER]);