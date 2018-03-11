///@description ca_add_to_hand(card, hand)
///@arg card
///@arg hand

var _card = argument0;
var _hand = argument1;

with(_hand){
	if(_card>100000){
		if(ds_list_size(cards)<HAND_LIMIT){
			_card.hand = id;
			_card.owner = owner;
			_card.image_xscale = hand_scale;
			_card.image_yscale = hand_scale;
			ds_list_add(cards, _card);
		}
		else{
			ex_log("-Hand too full! "+_card.name+" was burned.");
			instance_destroy(_card);
		}
	}
	else{
		var _card = instance_create_depth(x, y, depth-100, _card);
		if(ds_list_size(cards)<HAND_LIMIT){
			_card.hand = id;
			_card.owner = owner;
			_card.image_xscale = hand_scale;
			_card.image_yscale = hand_scale;
			ds_list_add(cards, _card);
		}
		else{
			ex_log("-Hand too full! "+_card.name+" was burned.");
			instance_destroy(_card);
		}
	}
}