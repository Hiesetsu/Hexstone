///@function ex_play_model(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner
//node model is to be summoned to
var _node = argument0;
//source of battlecry, to be summoned after target is confirmed
var _model = argument1;
var _owner = argument2;

ex_log("--Captain Battlecry (+1/+1 to friendly Scouts and Marines)");
ex_floating_message_ext(_node.x, _node.y, "RALLY!!", 0.05);
var _targets = ds_list_create();
with(ob_model)
{
	if(owner = _owner && (tribe = MARINE || tribe == SCOUT)){
		att_effective +=1;
		hp_current+=1;
		hp_effective+=1;
	}
}
ex_play_model_from_box(_node, _model, _owner);
ex_clear_nodes();
//PROCESS DEATH that may have been caused by the battlecry
ex_process_deaths();