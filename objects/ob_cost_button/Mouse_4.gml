/// @description Insert description here
// You can write your code in this editor
if(box!=noone)
{
	box.open = true;
	box.opened_cost = cost;
	box.sprite_index = sp_armybox_open;
	with(box)
	{
		var i;
		for(i = 0; i<5; i++)
		{
			buttons[|i].visible = false;
			buttons[|i].mask_index = no_mask;
		}
	}
}