///@function bc_standardBearer(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner
//node model is to be summoned to
var _node = argument0;
//source of battlecry, to be summoned after target is confirmed
var _model = argument1;
var _owner = argument2;

ex_floating_message_ext(_node.x, _node.y, "Never falter!", SECOND);

ex_play_model_from_box(_node, _model, _owner);
ex_clear_nodes();
//PROCESS DEATH that may have been caused by the battlecry
ex_process_deaths();