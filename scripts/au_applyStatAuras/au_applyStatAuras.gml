///@function au_applyStatAuras()
//Stat auras buff or set
//updating auras consists of first reversing all auras' effects, then applying all auras whose sources exist.
//This is because the source of an aura may have been removed. Recipients of auras are attached with a reversal script when a source applies them.
//As such, removal is handled by the recipient, and application is handled by the source. Currently, only models can recieve or be the source of auras.

//Remove all auras from everything
with(ob_model)
{
	aliveBeforeAura = !(mortally_wounded||pending_destroyed||dead);
	if(applied_auras_stat&&!dead){
		var _i = 0;
		for(_i=0;_i<ds_list_size(applied_auras_stat);_i++){
			//Executing an applied aura with RUN_AURA reverses the aura's effect, executing with RETURN_NAME makes it return a name or description
			script_execute(applied_auras_stat[|_i], RUN_AURA);
				if(LOG_AURA){
				ex_log("["+script_execute(applied_auras_stat[|_i], RETURN_NAME)+" <- "+name+"]");
			}
		}
		ds_list_destroy(applied_auras_stat);
		applied_auras_stat=noone;
	}
}
//Reapply auras 
with(ob_model)
{
	if(auras_stat&&!dead){
		var _i = 0;
		for(_i=0;_i<ds_list_size(auras_stat);_i++){
			//Executing an aura with RUN_AURA reverses the aura's effect, executing with RETURN_NAME makes it return a name or description
			script_execute(auras_stat[|_i], RUN_AURA);
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