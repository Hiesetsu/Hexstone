///@function ex_summon_commandcenter(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner

var _c = ex_summon_model(argument0, argument1, argument2);

_c.art = argument2 == PLAYER1? sp_command_centerP1:sp_command_centerP2;