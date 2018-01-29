///@func ex_pay_mana(owner, amount)
///@param {real} owner
///@param {real} amount
var _owner = argument0;
var _amount = argument1;
with(ob_manabar)
{
	if(owner == _owner)
	{
		mana_current-=_amount;
		if(mana_current<0)
			mana_current = 0;
	}
}