///@function ex_deal_damage(targetNode, value)
///@param {real} targetNode
///@param {real} value
var _tarNode = argument0;
var _val = argument1;
if(_tarNode.model&& !_tarNode.model.mortally_wounded && !_tarNode.model.pending_destroyed)
{
	ex_deal_damage(_tarNode.model, _val);
}