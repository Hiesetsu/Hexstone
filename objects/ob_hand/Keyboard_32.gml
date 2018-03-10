/// @description Insert description here
// You can write your code in this editor
var _size = ds_list_size(cards);
if(_size>0){
	var _card = cards[|_size-1];
	ds_list_delete(cards, _size-1);
	instance_destroy(_card);
}