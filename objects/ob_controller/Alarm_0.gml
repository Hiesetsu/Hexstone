/// @description Do Start of First Turn Code
// You can write your code in this editor
if(room == rm_gameBoard || room == rm_gameBoardNetworking){
	tile_list = ob_playfieldHex.gTiles;
}
if(!on_play){
	current_turn = PLAYER1;
}else{
	current_turn = PLAYER2;
}
ex_change_turn();