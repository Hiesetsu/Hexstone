///@function dr_explosivedrone(model)
///@param {real} model
//Deathrattles are passed the model that called them
var _model = argument0
var _count = 0;
var _dead = 0;
ex_log("---Drone Deathrattle (1 to all models)---");
with(ob_model){
	if(!comm_center&&_model!=id&&!dead){
		ex_deal_damage(id, 1);
		if(mortally_wounded){
			_dead++;
		}
		_count++;
	}
}
ex_log("     ---Hit: "+string(_count)+" Mortally Wounded: "+string(_dead)+"---");
ex_log("^--Drone Deathrattle (1 to all models)--^");