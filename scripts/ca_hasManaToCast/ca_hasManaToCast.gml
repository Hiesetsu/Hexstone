///@description ca_hasManaToCast(card);
///@arg card
//Returns true if the card's owner has the mana to cast it
var _card = argument0;
var _has_mana = ex_get_current_mana(_card)>=_card.cost_effective;
return _has_mana;