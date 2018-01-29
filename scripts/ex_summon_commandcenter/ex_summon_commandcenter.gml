///@function ex_summon_commandcenter(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner

var _node = argument0;
var _model = instance_create_depth(0, 0, 0, argument1);
var _owner = argument2;
if(_node.model == noone)
{
	//create model and place it on the board
	_model.tile = _node;
	_model.owner = _owner;
	_node.model = _model;
	_model.color = _owner == PLAYER1 ? PLAYER1_COLOR : PLAYER2_COLOR;
	_model.highlight_color = _owner == PLAYER1 ? PLAYER1_HIGHLIGHT : PLAYER2_HIGHLIGHT;
	ex_setup_card(_model);
	if(_model.taunt)
	{
		_model.sprite_index = sp_base_taunt;
	}
	if(!_model.blitz)
	{
		_model.has_action = false;
	}
	if(_model.slow)
	{
		_model.has_move = false;
	}
	_model.image_blend = _model.color;
	_model.x = _node.x;
	_model.y = _node.y;
	_model.depth = _node.depth-1;
	_model.art = argument2 == PLAYER1? sp_command_centerP1:sp_command_centerP2;
	return _model;
}
return noone;


