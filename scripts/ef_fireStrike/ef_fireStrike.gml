///@description ef_fireStrike(node, val, card)
///@arg node
///@arg val
///@arg card
var _node = argument0;
var _val = argument1;
var _card = argument2;

ex_deal_damage_node(_node, _val);
ca_remove_card(_card, _card.hand);
