/// @description Insert description here
// You can write your code in this editor
var _size = ds_list_size(cards);
if(_size>0&&CONTROL.current_turn=owner){
	var _card = cards[|_size-1];
	ca_remove_card(_card, id);
}