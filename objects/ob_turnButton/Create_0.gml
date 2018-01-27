/// @description Insert description here
// You can write your code in this editor
image_blend = PLAYER1_COLOR;
image_speed = 0;
color = PLAYER1_COLOR;
highlight = PLAYER1_HIGHLIGHT;

path_player2 = path_add();
//path_add_point(path_player2, x, ob_playfieldHex.y+TILE_HEIGHT*6, 20);
path_add_point(path_player2, x, ob_playfieldHex.y+TILE_HEIGHT*4, 20);
path_add_point(path_player2, x, ob_playfieldHex.y+TILE_HEIGHT*2, 20);
path_set_closed(path_player2, false);

path_player1 = path_add();
path_add_point(path_player1, x, ob_playfieldHex.y+TILE_HEIGHT*2, 20);
path_add_point(path_player1, x, ob_playfieldHex.y+TILE_HEIGHT*4, 20);
path_set_closed(path_player1, false);

alarm[0] = 1;