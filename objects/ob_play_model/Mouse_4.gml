/// @description 
if(card)
{
	card.visible = false;
	alarm[0] = -1;
}
if(CONTROL.locked){
	
}
else if(playable && CONTROL.current_turn==owner)
{
	ex_target_play_with_rule(summon_rule, model_to_summon, battlecry, slot);
}
else if(too_many_models){
	ex_floating_message(x, y, TOO_MANY_MODELS_MESSAGE);
}
else if(not_enough_mana){
	ex_floating_message(x, y, NOT_ENOUGH_MANA_MESSAGE);
}