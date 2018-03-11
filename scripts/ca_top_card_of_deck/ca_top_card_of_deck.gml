///@description ca_top_card_of_deck(deck)
///@arg deck
//Removes top card from deck and returns the value 
var _deck = argument0;
if(ds_list_size(_deck.cards)>0){
	var _card = _deck.cards[|0];
	ds_list_delete(_deck.cards, 0);
	return _card;
}
return noone;