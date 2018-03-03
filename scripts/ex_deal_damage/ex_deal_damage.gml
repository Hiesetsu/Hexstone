///@function ex_deal_damage(attacker, defender)
///@param {real} attacker
///@param {real} defender
var _att = argument0;
var _def = argument1;
var _splash;
if(_def.shielded)
{
	_def.shielded = false;
	_splash = instance_create_depth(_def.x, _def.y, -100, ob_damage_splash);
	_splash.sprite_index = sp_damage_splash_none;
	_splash.image_blend = $99FFFF;
	ex_log("-"+CONTROL.player_to_string[?_def.owner]+"'s "+_def.name+" took no damage due to shielding.");
}
else
{
	if(_def.armored)
	{
		var _reduced = _att.att_effective-1;
		_reduced = _reduced<1 ? 1 : _reduced;
		_def.hp_current -= _reduced;
		_splash = instance_create_depth(_def.x, _def.y, -100, ob_damage_splash);
		_splash.value = _reduced
				ex_log("-"+CONTROL.player_to_string[?_def.owner]+"'s "+_def.name+" took a reduced "+string(_reduced)+" damage due to armor.");
		_splash.sprite_index = sp_damage_splash_armored;
		_splash.image_blend = c_white;
	}
	else
	{
		_def.hp_current -= _att.att_effective;
		ex_log("-"+CONTROL.player_to_string[?_def.owner]+"'s "+_def.name+" took "+string(_att.att_effective)+" damage.");
		_splash = instance_create_depth(_def.x, _def.y, -100, ob_damage_splash);
		_splash.value = _att.att_effective;
	}
}
