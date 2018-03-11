///@description ca_draw_card(hand)
var _hand = argument0;
if(_hand.deck){
	var _card = ca_top_card_of_deck(_hand.deck);
	if(_card != noone){
		ex_log("-"+CONTROL.player_to_string[?_hand.owner]+" drew a card.");
		ca_add_to_hand(_card, _hand);
	}
}