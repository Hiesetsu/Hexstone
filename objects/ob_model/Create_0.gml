/// @description Insert description here
// You can write your code in this editor
#macro MELEE 0
#macro RANGED 1
#macro PLAYER1 0
#macro PLAYER2 1
#macro PLAYER1_HIGHLIGHT $F2B213
//0f4da3
#macro PLAYER1_COLOR $FCF341
//41f3fc
#macro PLAYER2_HIGHLIGHT $2870E5
//e57028
#macro PLAYER2_COLOR $78AEE5
//e5ae78
#macro REMOVEALARM 3
name = "Default";
card_text = "";
card = noone;
art = sp_marine;
full_art = sp_marineFullArt;
att_base = 2;
hp_base = 3;
points_base = 2;

comm_center = false;

combat_range = MELEE;

att_effective = att_base;
hp_effective = hp_base;
points_effective = points_base;
hp_current = hp_effective;

owner = noone;
controller = noone;
type = noone;
tribe = noone;

battlecry = noone;
deathrattle = noone;
auras = noone;

attack_trigger = noone;
after_attack_trigger = noone;
defense_trigger = noone;
after_defense_trigger = noone;

ability = noone;
ability_cost_base = 0;
ability_cost_effective = ability_cost_base;

audio_lines = ds_list_create();
MID = -1;
rarity = sp_basic_rarity;
tile = noone;

has_move = true;
has_action = true;
just_summoned = true;
exhausted = false;
stunned = false;
disarmed = false;
rooted = false;
immobile = false;
cannot_attack = false;

taunt = false;
armored = false;
shielded = false;
stealthed = false;
blitz = false;
slow = false;
lethal = false;
elusive = false;

windfury = false;
stormstep = false;

deepstrike = false;
flanking = false;
ambush = false;

mortally_wounded = false;
pending_destroyed = false;

//when a model is animating but dead
dead = false;

extra_displayX = -(sprite_width*0.75/2-4);
extra_displayY = -(sprite_width*0.75/2-4);
att_displayX = -(sprite_width*0.75/2-4);
att_displayY = sprite_height*0.75/2-5;
hp_displayX = sprite_width*0.75/2-4;
hp_displayY = sprite_height*0.75/2-5;
range_displayX = 0;
range_displayY = (sprite_height/2-3);


