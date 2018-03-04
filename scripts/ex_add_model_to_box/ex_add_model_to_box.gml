///@function ex_add_model_to_box(model, box, number)
///@param model
///@param box
///@param number
//Returns true if add was successful
var _mod = argument0;
var _box = argument1;
var _num = argument2;
var _i = 0;
for(_i = 0; _i<ds_grid_width(_box.army_list); _i++)
{
	if(_box.army_list[#_i, AL_MODEL]==_mod){
		_box.army_list[#_i, AL_MODEL]=_mod
		_box.army_list[#_i, AL_NUMBER]+=_num;
		return true;
	}
}
//If there isn't already a slot with that model, look for an empty slot
for(_i = 0; _i<ds_grid_width(_box.army_list); _i++)
{
	if(_box.army_list[#_i, AL_NUMBER]==0){
		_box.army_list[#_i, AL_MODEL]=_mod
		_box.army_list[#_i, AL_NUMBER]+=_num;
		return true;
	}
}

return false;
