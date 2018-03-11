/// @description Insert description here
// You can write your code in this editor
#macro HAND_LIMIT 7
image_alpha = 0.25;
owner = PLAYER1;
deck = noone;
cards = ds_list_create();
hand_scale = 0.40;
card_y = y;
raised_y = y-70;
selected_card = noone;
hovered_card = noone;
card_depth = depth-100;
card_hovered_depth = depth-108;
log_once = true;
card_spacing = 50;
alarm[0] = 1;