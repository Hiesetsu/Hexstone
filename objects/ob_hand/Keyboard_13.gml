/// @description Insert description here
// You can write your code in this editor
if(ds_list_size(cards)<HAND_LIMIT){
	var _testCard = instance_create_depth(x, y, depth-100, ob_card);
	_testCard.hand = id;
	_testCard.image_xscale = hand_scale;
	_testCard.image_yscale = hand_scale;
	ds_list_add(cards, _testCard);
}