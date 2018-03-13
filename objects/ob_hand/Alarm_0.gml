/// @description Insert description here
// You can write your code in this editor
var _owner = owner;
var _deck = noone;
with(ob_deck){
	if(owner = _owner){
		_deck = id;
	}
}
deck = _deck;
ca_add_to_hand(ob_fireStrike, id);
ca_add_to_hand(ob_fireStrike, id);
ca_add_to_hand(ob_ShieldAndHammer, id);
if(owner = PLAYER2){
	if(CONTROL.on_play){
		ca_add_to_hand(ob_fireStrike, id);
	}
	raised_y = y+70;
}else if(owner = PLAYER1 && !CONTROL.on_play){
	ca_add_to_hand(ob_fireStrike, id);
}
