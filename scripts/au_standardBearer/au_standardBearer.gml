///@function au_standardBearer(flag)
///@param {real} flag

//All reverse auras are called from the object they're the source of, so it is safe to access variables
var _flag = argument0;
var _auraName = "Hope: +1/+1";
if(_flag==RETURN_NAME){
	return _auraName;
}
else{
	var _neighbors=tile.neighbors;
	if(_neighbors){
		var _i;
		for(_i=0; _i<ds_list_size(_neighbors); _i++){
			var _model=_neighbors[|_i].model;
			if(_model&&_neighbors[|_i]!=tile){
				if(_model.owner = owner&&(_model.tribe == SCOUT || _model.tribe == MARINE)){
					
					//This aura grants +1/+1 to adjacent models
					if(LOG_AURA){
						ex_log("["+_auraName+" -> "+_model.name+"]");
					}
					_model.att_effective+=1;
					_model.hp_effective+=1;
					_model.hp_current+=1;
					if(_model.hp_current>0){
						_model.mortally_wounded = false;
					}
					//All auras must attach the reversal script to the object they modify, IF they modify it
					if(!_model.applied_auras_stat){
						_model.applied_auras_stat=ds_list_create()
					}
					ds_list_add(_model.applied_auras_stat, rau_standardBearer);
				}
			}
		}
	}
}