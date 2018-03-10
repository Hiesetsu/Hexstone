/// @description Insert description here
// You can write your code in this editor
if(hovered_tile != noone)
{
	with(hovered_tile)
	{
		if(model && !model.mortally_wounded && !model.pending_destroyed)
		{
			ex_hide_card(model);
			
			if(model.owner != ob_controller.current_turn && CONTROL.state = TARGET_ATTACK){
			#region quick attack
			
				if(CONTROL.taunt_in_range)
				{
					if(!model.taunt)
					{
						ex_floating_message(mouse_x, mouse_y, TAUNT_MESSAGE);
					}
					else
					{
						ex_model_attack(CONTROL.attacker, model);
					}
				}
				else
				{
					ex_model_attack(CONTROL.attacker, model);
				}		
				#endregion
			}			
		}
		else
		{
			ex_clear_nodes()
		}
	}
}
else
{
	ex_clear_nodes();
}