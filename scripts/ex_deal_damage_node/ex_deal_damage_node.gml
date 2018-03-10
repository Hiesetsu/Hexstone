///@function ex_deal_damage(targetNode, value)
///@param {real} targetNode
///@param {real} value
var _tarNode = argument0;
var _val = argument1;
if(_tarNode.model&& !_tarNode.model.dead)
{
	ex_deal_damage(_tarNode.model, _val);
}