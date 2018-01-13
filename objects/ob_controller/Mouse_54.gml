/// @description Insert description here
// You can write your code in this editor
ex_clear_nodes();
with(ob_manabar)
{
	if(owner == CONTROL.current_turn)
	{
		mana_current-=1;
		mana_current = mana_current<0?0:mana_current;
	}
}