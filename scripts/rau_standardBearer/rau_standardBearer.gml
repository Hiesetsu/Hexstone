///@function rau_standardBearer(flag)
///@param {real} flag

//All reverse auras are called from the object they're applied to, so it is safe to access variables
var _flag = argument0;

if(_flag==RETURN_NAME){
	return "Hope: +1/+1";
}
else{
	//reverse auras simply reverse the effect of their counterpart. 
	//They are removed from the model by the scripts which run the model loops.
	//Reverse auras do NOT check conditions, they ALWAYS remove
	//If the source is still around, IT is what has the responsibility of reapplying if the aura is still valid
		att_effective-=1;
		hp_effective-=1;
		hp_current-=1;
	 
		if(hp_current==-1){
			hp_current = 0;
		}
		if(hp_current<-1){
			mortally_wounded = true;
		}
}