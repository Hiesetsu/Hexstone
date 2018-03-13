///@description ca_draw_card(player)
var _player = argument0;
var _hand = noone;
with(ob_hand){
	if(owner == _player){
		_hand = id;
	}
}
if(_hand.deck){
	var _card = ca_top_card_of_deck(_hand.deck);
	if(_card != noone){
		ex_log("-"+CONTROL.player_to_string[?_hand.owner]+" drew a card.");
		ca_add_to_hand(_card, _hand);
	}
}