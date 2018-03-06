///@function dr_explosivedrone(model)
///@param {real} model
var _model = argument0
with(ob_model){
	if(!comm_center){
		ex_log("---Drone Deathrattle (1 damage to all models): ");
		ex_deal_damage(id, 1);
	}
}