///@function en_captain(flag)
///@param {real} flag

//All enchantments are called from the object they're the source of, so it is safe to access variables
var _flag = argument0;
var _enchantmentName = "Rally: +1 Att";
if(_flag==RETURN_NAME){
	return _enchantmentName;
}
else if(_flag==RUN_ENCHANTMENT){
	if(!applied_enchantments_stat){
		applied_enchantments_stat=ds_list_create()
	}
			if(LOG_ENCHANTMENT){
				ex_log("["+_enchantmentName+" -> "+name+"]");
			}
			att_effective+=1;
			hp_effective+=1;
			hp_current+=1;
			//All enchantments must attach the reversal script to the object they modify, IF they modify it
			ds_list_add(applied_enchantments_stat, en_captain);
}
		else if(_flag==REVERSE_ENCHANTMENT){
	//reverse enchantments simply reverse the effect of their counterpart. 
	//They are removed from the model by the scripts which run the model loops.
	//Reverse auras do NOT check conditions, they ALWAYS remove
	//If the source is still around, IT is what has the responsibility of reapplying if the aura is still valid
		att_effective-=1;
		hp_effective-=1;
		hp_current-=1;
		if(hp_current==-1){
			hp_current = 0;
		}
		if(LOG_ENCHANTMENT){
				ex_log("["+_enchantmentName+" <- "+name+"]");
			}
}