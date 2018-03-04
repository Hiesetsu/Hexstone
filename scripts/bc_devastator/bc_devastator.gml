///@function ex_play_model(node, model, owner)
///@param {real} node
///@param {real} model
///@param {real} owner
//node model is to be summoned to
var _node = argument0;
//source of battlecry, to be summoned after target is confirmed
var _model = argument1;
var _owner = argument2;
CONTROL.battlecry = ex_deal_damage_node;
CONTROL.battlecry_val = 1;
CONTROL.battlecry_hint = "Deal 1 damage.";
CONTROL.battlecry_log = "--Devastator battlecry:";
with(ob_model)
{
	if(owner != _owner){
		tile.target = true;
	}
}