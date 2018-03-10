///@function au_braveScout(flag)
///@param {real} flag

//All auras are called from the object they're the source of, so it is safe to access variables
var _flag = argument0;
var _auraName = "Bravery: +1 Att";
if(_flag==RETURN_NAME){
	return _auraName;
}
else if(_flag==RUN_ENCHANTMENT){
	if(!applied_enchantments_stat){
		applied_enchantments_stat=ds_list_create()
	}
		var _has_elite = false;
		var _owner = owner;
		//This aura grants the source +1 att if its owner controls an elite
		with(ob_model){
			_has_elite = _owner==owner&&tribe==ELITE&&!dead;
			if(_has_elite){
				break;
			}
		}
		if(_has_elite){
			if(LOG_AURA){
				ex_log("["+_auraName+" -> "+name+"]");
			}
			att_effective+=1;
			//All auras must attach the reversal script to the object they modify, IF they modify it
			ds_list_add(applied_enchantments_stat, au_braveScout);
		}
}else if(_flag==REVERSE_ENCHANTMENT){
	//reverse auras simply reverse the effect of their counterpart. 
	//They are removed from the model by the scripts which run the model loops.
	//Reverse auras do NOT check conditions, they ALWAYS remove
	//If the source is still around, IT is what has the responsibility of reapplying if the aura is still valid
		att_effective-=1;
		if(LOG_AURA){
				ex_log("["+_auraName+" <- "+name+"]");
			}
}