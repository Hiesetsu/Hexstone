///@function au_applyOtherAuras()
//Other auras (Apply special rules like taunt, affect cost, or anything which doesn't affect stats
//updating auras consists of first reversing all auras' effects, then applying all auras whose sources exist.
//This is because the source of an aura may have been removed. Recipients of auras are attached with a reversal script when a source applies them.
//As such, removal is handled by the recipient, and application is handled by the source. Currently, only models can recieve or be the source of auras.

//Remove all auras from everything
with(ob_model)
{
	aliveBeforeAura = !(mortally_wounded||pending_destroyed||dead);
	if(applied_enchantments_other&&!dead){
		var _i = 0;
		for(_i=0;_i<ds_list_size(applied_enchantments_other);_i++){
			//Executing an applied aura with REVERSE_ENCHANTMENT reverses the aura's effect, executing with RETURN_NAME makes it return a name or description
			script_execute(applied_enchantments_other[|_i], REVERSE_ENCHANTMENT);
				if(LOG_AURA){
				ex_log("["+script_execute(applied_enchantments_other[|_i], RETURN_NAME)+" <- "+name+"]");
			}
		}
		ds_list_destroy(applied_enchantments_other);
		applied_enchantments_other=noone;
	}
}
//Reapply auras 
with(ob_model)
{
	if(enchantments_other&&!dead){
		var _i = 0;
		for(_i=0;_i<ds_list_size(enchantments_other);_i++){
			//Executing an aura with RUN_ENCHANTMENT reverses the aura's effect, executing with RETURN_NAME makes it return a name or description
			script_execute(enchantments_other[|_i], RUN_ENCHANTMENT);
		}
	}
	//Uncomment to make moving away from a health giving aura kill you
	if(aliveBeforeAura&&hp_current<=0/*&&CONTROL.state!=TARGET_MOVE*/){
			hp_current = 1;
			mortally_wounded=false;
			if(LOG_AURA){
				ex_log(name+" was saved by an aura.");
			}
		}
}