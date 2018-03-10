///@description ca_isCastable(card);
///@arg card
//Generic casting script. Sets playable to true if the owner has enough mana.
var _card = argument0;
_card.playable = ca_hasManaToCast(_card);
