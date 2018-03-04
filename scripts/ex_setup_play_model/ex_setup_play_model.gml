///@func ex_num_models(play_model_button, box, cost, slot)
///@param {real} play_model_button
///@param {real} box
///@param {real} cost
///@param {real} slot

var _button = argument0;
var _box = argument1;
var _cost = argument2;
var _slot = argument3;

var _list = _box.army_list;
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
var _num = (_list[#(_cost+_slot), AL_NUMBER]);
if(_num<=0)
	return;
var _model = (_list[#(_cost+_slot), AL_MODEL]);
_model = instance_create_depth(x, y, 1, _model);
_button.number_held = _num;
_button.slot = _cost+_slot;
_button.attack_display = _model.att_effective;
_button.health_display = _model.hp_effective;
_button.model_to_summon  =_model.MID;
_button.art = _model.art;
_button.combat_range = _model.combat_range;
_button.battlecry = _model.battlecry;
_model.owner = _box.owner;
_button.owner = _model.owner;
if(_model.flanking){
	_button.summon_rule = FLANKING;
}else if(_model.deepstrike){
	_button.summon_rule = DEEPSTRIKE;
}else if(_model.ambush){
	_button.summon_rule = AMBUSH;
}else{
	_button.summon_rule = noone;
}

ex_setup_card(_model);
var c;
with(_model.card)
{
	c = instance_copy(false);
}
c.depth = -100;
_button.card = c;

var _playable;
with(ob_manabar)
{
	if(owner == _box.owner)
	{
		_playable = _model.points_effective<=mana_current;
	}
}
var _modelCount = _button.owner==PLAYER1?CONTROL.player1_model_count:CONTROL.player2_model_count;
_playable = _modelCount<CONTROL.model_limit&&_playable;

_button.playable = _playable;
instance_destroy(_model);

