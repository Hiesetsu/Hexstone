/// @description Insert description here
// You can write your code in this editor
sprite_index = sp_armybox;
var i;
for(i = 0; i<5; i++)
{
	buttons[|i].visible = true;
	buttons[|i].mask_index = sp_cost_button;
	if(i<4)
			{
				ex_hide_play_model(play_model_buttons[i]);
			}
}
open = false;