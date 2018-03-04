///@function ex_play_model(node, model, owner, battlecry)
///@param {real} node
///@param {real} model
///@param {real} owner
///@param {real} battlecry
var _node = argument0;
var _model = argument1;
var _owner = argument2;
var _battlecry = argument3;

//if the model has a battlecry, it occurs here
if(_battlecry)
{
	//preserve the slot and model to play after battlecry 
	var _model_to_summon = CONTROL.model_to_summon ;
	var _list_slot = CONTROL.army_list_slot;
	ex_clear_nodes();
	CONTROL.state = TARGET_BATTLECRY;
	CONTROL.model_to_summon = _model_to_summon;
	CONTROL.node_to_summon = _node;
	CONTROL.army_list_slot = _list_slot;
	var _tempMod = instance_create_depth(0, 0, 0, _model);
	var _dummy = instance_create_depth(_node.x, _node.y, _node.depth-1, ob_dummy);
	_dummy.sprite_index = _tempMod.sprite_index;
	_dummy.art = _tempMod.art;
	_dummy.image_blend = _owner == PLAYER1 ? PLAYER1_COLOR : PLAYER2_COLOR;
	instance_destroy(_tempMod);
	script_execute(_battlecry, _node, _model, _owner);
	var _bc_hint = instance_create_depth(x, y, -100, ob_floating_message);
	_bc_hint.message = CONTROL.battlecry_hint;
	_bc_hint.stick_to_cursor = true;
	_bc_hint.alarm[0]=-1;
}
//If there isn't a battlecry, simply play the model
else{
	//here, pay the cost of the model, increment the number of models for the player,
	//summon the model to the board (summoning increments model count)
	ex_play_model_from_box(_node, _model, _owner);
}


//here, triggers which care about AFTER a model is played are triggered