///@func ex_get_current_mana(owner)
///@param {real} owner
var _owner = argument0;
var _amount = 0;
with(ob_manabar)
{
	if(owner == _owner)
	{
		_amount = mana_current;
		return _amount;
	}
}
return _amount;