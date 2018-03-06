///@function au_braveScout(flag)
///@param {real} flag

//All reverse auras are called from the object they're the source of, so it is safe to access variables
var _flag = argument0;
var _auraName = "Bravery: +1 Att";
if(_flag==RETURN_NAME){
	return _auraName;
}
else{
	if(!applied_auras_stat){
		applied_auras_stat=ds_list_create()
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
			ds_list_add(applied_auras_stat, rau_braveScout);
		}
}