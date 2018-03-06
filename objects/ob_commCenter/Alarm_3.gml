/// @description Insert description here
// You can write your code in this editor
if(owner == PLAYER1){
	CONTROL.winner = PLAYER2;
}
else{
	CONTROL.winner = PLAYER1;
}
room_goto(rm_victoryScreen);
