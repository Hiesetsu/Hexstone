///@description ca_isCastable(card);
///@arg card
//Generic casting script. Sets playable to true if the owner has enough mana.
var _card = argument0;
var _hasMana = ca_hasManaToCast(_card);
_card.playable = _hasMana&&CONTROL.current_turn==_card.owner;
