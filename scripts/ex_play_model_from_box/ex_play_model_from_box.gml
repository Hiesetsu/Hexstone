///@function ex_play_model(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner
var _node = argument0;
var _model = argument1;
var _owner = argument2;
//here, pay the cost of the model, increment the number of models for the player,
//summon the model to the board (summoning increments model count)

var _m = ex_summon_model(_node, _model, _owner, true);
ex_pay_mana(_owner, _m.points_effective);
au_applyStatAuras();
au_applyOtherAuras();
ex_log("-"+CONTROL.player_to_string[?_owner]+" played "+_model.name+" at "+string(_node.ex)+", "+string(_node.wy));
if(_owner == PLAYER1)
{
	with(ob_armybox)
	{
		if(owner == PLAYER1)
		{
			army_list[# CONTROL.army_list_slot, AL_NUMBER] -= 1; 
			buttons[|floor(CONTROL.army_list_slot/4)].number--;
			points_remaining = ex_count_army_point_total(army_list);
		}
	}
}
else
{
	with(ob_armybox)
	{
		if(owner == PLAYER2)
		{
			army_list[# CONTROL.army_list_slot, AL_NUMBER] -= 1; 
			buttons[|floor(CONTROL.army_list_slot/4)].number--;
			points_remaining = ex_count_army_point_total(army_list);
		}
	}
}