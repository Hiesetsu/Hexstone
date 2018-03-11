/// @description Insert description here
// You can write your code in this editor
enum CARD_TYPES{
	upgrade,
	reinforcement,
	spell
}

owner = PLAYER1;
hand = noone;

cost_base = 2;
cost_effective = cost_base;
name = "Fire Strike";
text = "Deal 3 damage.";
type = CARD_TYPES.spell;
art = sp_art_missileStrike;

log = "--Fire Strike Effect:";
hint_text = "Deal 3 damage"

//Targetting runs the effect code with the targeted node and the effect value as the second argument
effect = ef_fireStrike;
effect_value = 3;
targeting_rule = ex_target_all_characters;
play_rule = ca_isCastable;
playable = false;


width = sprite_width;
height = sprite_height;
cost_x = 20;
cost_y = 28;
name_x = 140;
name_y = 30;
text_y = 270;
text_x = 120;
hand_x = x;
hand_y = y;
hover_scale = 0.75;
hand_scale = 0.40;
text_font = fo_belwe_large;
name_font = fo_belwe_Xlarge;


card_surface = surface_create(width, height);
mask = instance_create_depth(x, y, depth-1000, ob_cardMask);
mask.card = id;
mask.image_xscale = 0.2;
mask.image_yscale = 0.40;