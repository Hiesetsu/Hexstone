/// @description Insert description here
// You can write your code in this editor
#macro MELEE 0
#macro RANGED 1
#macro PLAYER1 0
#macro PLAYER2 1
#macro PLAYER1_HIGHLIGHT $C1AD45
#macro PLAYER1_COLOR $FFE2AF
#macro PLAYER2_HIGHLIGHT $45ADC1
#macro PLAYER2_COLOR $AFE2FF
#macro REMOVEALARM 3
name = "Default";
card_text = "";
art = sp_marine;
full_art = sp_marineFullArt;
att_base = 2;
hp_base = 3;
points_base = 2;

combat_range = MELEE;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;

owner = noone;
controller = noone;
tags = ds_list_create();
enchantments_base = ds_list_create();
enchantments = ds_list_create();
ability = noone;
ability_cost_base = 0;
ability_cost_effective = ability_cost_base;
audio_lines = ds_list_create();
MID = -1;
rarity = sp_basic_rarity;
tile = noone;

has_move = true;
has_action = true;
exhausted = false;
stunned = false;
disarmed = false;
rooted = false;

taunt = false;
armored = false;
shielded = false;
stealthed = false;


mortally_wounded = false;
pending_destroyed = false;

att_displayX = -sprite_width/4-4;
att_displayY = sprite_height*0.75/2-4;
hp_displayX = sprite_width*0.75/2-4;
hp_displayY = sprite_width*0.75/2-4;
card = noone;
alarm[0] = 1;

