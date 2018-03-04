///@func ex_target_summon_with_rule(summon_rule, model, battlecry, list_slot)
///@param {real} summon_rule
///@param {real} model
///@param {real} battlecry
///@param {real} list_slot
ex_clear_nodes();
CONTROL.play_model_occurring = true;
CONTROL.model_to_summon = argument1;
CONTROL.battlecry = argument2;
CONTROL.army_list_slot = argument3;
switch(argument0)
{
	case(FLANKING):
		ex_target_flanking_summon();
	break
	case(DEEPSTRIKE):
		ex_target_deepstrike_summon();
	break
	case(AMBUSH):
		ex_target_ambush_summon();
	break
	case(noone):
	default:
		ex_target_normal_summon();
	break
}