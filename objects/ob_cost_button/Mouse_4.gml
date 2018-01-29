/// @description Insert description here
// You can write your code in this editor
if(box!=noone)
{
	if(CONTROL.current_turn == box.owner)
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
				if(i<4)
				{
					ex_setup_play_model(play_model_buttons[i], id, opened_cost, i);
					if(play_model_buttons[i].number_held>0)
					{
						play_model_buttons[i].visible = true;
						play_model_buttons[i].mask_index = sp_base;
					}
				}
			}
		}
	}
}