///@function ex_deal_damage(target, value)
///@param {real} target
///@param {real} value
var _tar = argument0;
var _val = argument1;
var _splash;
if(_tar.shielded)
{
	_tar.shielded = false;
	_splash = instance_create_depth(_tar.x, _tar.y, -100, ob_damage_splash);
	_splash.sprite_index = sp_damage_splash_none;
	_splash.image_blend = $99FFFF;
	ex_log("-"+CONTROL.player_to_string[?_tar.owner]+"'s "+_tar.name+" took no damage due to shielding.");
}
else
{
	if(_tar.armored)
	{
		var _reduced = _val-1;
		_reduced = _reduced<1 ? 1 : _reduced;
		_tar.hp_current -= _reduced;
		_splash = instance_create_depth(_tar.x, _tar.y, -100, ob_damage_splash);
		_splash.value = _reduced
				ex_log("-"+CONTROL.player_to_string[?_tar.owner]+"'s "+_tar.name+" took a reduced "+string(_reduced)+" damage due to armor.");
		_splash.sprite_index = sp_damage_splash_armored;
		_splash.image_blend = c_white;
	}
	else
	{
		_tar.hp_current -= _val;
		ex_log("-"+CONTROL.player_to_string[?_tar.owner]+"'s "+_tar.name+" took "+string(_val)+" damage.");
		_splash = instance_create_depth(_tar.x, _tar.y, -100, ob_damage_splash);
		_splash.value = _val;
	}
}
if(_tar.hp_current<=0)
{
	ex_log("-"+CONTROL.player_to_string[?_tar.owner]+"'s "+_tar.name+" was mortally wounded.");
	_tar.mortally_wounded = true;
}