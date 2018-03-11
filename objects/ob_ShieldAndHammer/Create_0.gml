/// @description Insert description here
// You can write your code in this editor
event_inherited();
cost_base = 2;
cost_effective = cost_base;
name = "Shield & Hammer";
text = "Give a Melee Troop +2 Att and Shielded.";
type = CARD_TYPES.spell;
art = sp_art_ShieldAndHammer;

log = "--Shield & Hammer Buff:";
hint_text = "+2 Att & Shielded"

//Targetting runs the effect code with the targeted node and the effect value as the second argument
effect = ef_shieldAndHammer;
effect_value = TROOP;
targeting_rule = ex_target_melee_models_with_tag;
play_rule = ca_ShieldAndHammerPlayRule;
playable = false;

name_font = fo_belwe_large;