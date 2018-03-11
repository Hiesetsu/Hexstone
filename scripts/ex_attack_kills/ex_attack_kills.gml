///@function ex_attack_kills(attacker, defender)
///@param attacker 
///@param defender
var _a = argument0;
var _d = argument1;

if(_d.shielded||_d.stealthed)
{
	return false;
}
if(_a.lethal && !_d.comm_center){
	return true;
}
var _damage = _a.att_effective;
if(_d.armored = true)
{
	_damage -= 1;
	_damage = _damage == 0 ? 1: _damage;
}
if(_damage>=_d.hp_current)
{
	return true;
}
return false;