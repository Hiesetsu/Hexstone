///@description ef_fireStrike(node, val, card)
///@arg node
///@arg val
///@arg card
var _node = argument0;
var _val = argument1;
var _card = argument2;

var _model = _node.model;
if(_model){
	model.att_effective+=2;
	model.shielded = true;
}
ca_remove_card(_card, _card.hand);
