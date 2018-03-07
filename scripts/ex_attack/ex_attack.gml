///@function ex_attack(attacker, defender)
///@param {real} attacker
///@param {real} defender
var _att = argument0;
var _def = argument1;
var _damageDone = ex_deal_damage(_def, _att.att_effective);
if(_damageDone>0){
	if(_att.lethal&&!_def.comm_center){
		_def.pending_destroyed = true;
		ex_log("-"+_def.name+"'s fate is sealed");
	}
}
