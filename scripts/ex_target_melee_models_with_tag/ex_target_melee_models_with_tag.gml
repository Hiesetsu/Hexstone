///@description ex_target_melee_models_with_tag
//targetting rules are passed cards
var _tag = argument0.effect_value;
with(ob_model)
{
	if(!(stealthed||elusive)){
		if(combat_range==MELEE&&_tag=type){
			tile.target = true;
		}
	}
}