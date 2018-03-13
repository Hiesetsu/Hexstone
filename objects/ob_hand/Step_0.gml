/// @description Insert description here
// You can write your code in this editor
if(selected_card){
	selected_card.x = mouse_x;
	selected_card.y = mouse_y;
	selected_card.depth = card_hovered_depth;
	selected_card.image_angle = lerp(selected_card.image_angle, 0, 0.2);
}
else if(hovered_card){
	hovered_card.y = lerp(hovered_card.y, raised_y, 0.1);
	hovered_card.depth = card_hovered_depth;
	hovered_card.image_angle = lerp(hovered_card.image_angle, 0, 0.2);
}
var _i = 0;
var _size = ds_list_size(cards);
for(_i = 0; _i<_size; _i++){
	var _card = cards[|_i];
	var _offset = -(_i-(_size-1)/2);
	if(_card != hovered_card && _card != selected_card){
		_card.x = x-_offset*card_spacing;//lerp(_card.x, x-_offset, 0.1);
		_card.image_xscale = lerp(_card.image_xscale, hand_scale, 0.5);
		_card.image_yscale = lerp(_card.image_yscale, hand_scale, 0.5);
		if(owner == PLAYER1 || room != rm_gameBoardNetworking){
			_card.y = lerp(_card.y, card_y+abs(_offset*4), 0.1);
			_card.image_angle = _offset*3;
			_card.depth = card_depth-_i;
		}
		else{
			_card.y = lerp(_card.y, card_y-abs(_offset*4), 0.1);
			_card.image_angle = 360-_offset*3;
			_card.depth = card_depth+_i;
		}
	}
}