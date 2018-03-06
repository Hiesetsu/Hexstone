///@function bc_havoc(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner
//node model is to be summoned to
var _node = argument0;
//source of battlecry, to be summoned after target is confirmed
var _model = argument1;
var _owner = argument2;

ex_log("--Havoc battlecry (deal 1 to a random enemy):");
var _targets = ds_list_create();
with(ob_model)
{
	if(owner != _owner){
		ds_list_add(_targets, id);
	}
}
ex_deal_damage(_targets[|irandom_range(0, ds_list_size(_targets)-1)], 1);
ds_list_destroy(_targets);
ex_play_model_from_box(_node, _model, _owner);
ex_clear_nodes();
//PROCESS DEATH that may have been caused by the battlecry
ex_process_deaths();