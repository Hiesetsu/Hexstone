///@description ca_remove_card(card, source)
///@arg card
///@arg source
var _card = argument0;
//hand or deck
var _source = argument1;

var _i = ds_list_find_index(_source.cards, _card);
if(_i>=0){
		ds_list_delete(_source.cards, _i);
		instance_destroy(_card);
}