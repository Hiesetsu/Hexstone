/// @description Insert description here
// You can write your code in this editor
cost_display = 0;
attack_display = 0;
health_display = 0;
model_to_summon = noone;
number_held = 0
combat_range = MELEE;
activated = false;
playable = false;
art = sp_marine;
summon_rule = noone;
owner = PLAYER1;
battlecry = noone;
slot = noone;

card = noone;
cost_displayX = -(sprite_width*0.75/2-4);
cost_displayY = -(sprite_height*0.75/2-5);
att_displayX = -(sprite_width*0.75/2-4);
att_displayY = sprite_height*0.75/2-5;
hp_displayX = sprite_width*0.75/2-4;
hp_displayY = sprite_height*0.75/2-5;
range_displayX = 0;
range_displayY = (sprite_height/2-3);

numberX = sprite_width/2+5;
numberY = -24;
summonX = sprite_width/2+5;
summonY = 0;

visible = false;
mask_index = no_mask;