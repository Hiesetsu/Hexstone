/// @description Insert description here
// You can write your code in this editor
#macro UPGRADE 0
#macro REINFORCEMENT 1
#macro SPELL 2

hand = noone;
hand_x = x;
hand_y = y;
hover_scale = 0.75;
hand_scale = 0.40;
width = sprite_width;
height = sprite_height;
card_surface = surface_create(width, height);
mask = instance_create_depth(x, y, depth-1000, ob_cardMask);
mask.card = id;
mask.image_xscale = 0.2;
mask.image_yscale = 0.40;
cost_x = 20;
cost_y = 28;
cost_base = 2;
cost_effective = cost_base;

owner = PLAYER1;

name_x = 140;
name_y = 30;
name = "Fire Strike";
text_y = 270;
text_x = 120;
text_font = fo_belwe_large;
text = "Deal 3 Damage";
art = sp_art_missileStrike;

//Targetting runs the effect code with the targeted node and the effect value as the second argument
effect = ex_deal_damage_node;
effect_value = 3;
targeting_rule = noone;
play_rule = ca_isCastable;
playable = false;
