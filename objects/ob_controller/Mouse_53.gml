/// @description Insert description here
// You can write your code in this editor
if(hovered_tile != noone)
{
	with(hovered_tile)
	{
		if(model && !model.mortally_wounded && !model.pending_destroyed)
		{
			ex_hide_card(model);
			if(model.owner == ob_controller.current_turn && ex_can_move(model))
			{
				if(!source_node)
				{
					ex_getpath(id, 2);
					model.alarm[2] = room_speed/2;
				}
				else
				{
					if(model.alarm[2] = -1)
					{
						model.has_move = false;
						ex_clear_nodes()
					}
				}
			}
			else if(model.owner == ob_controller.current_turn && ex_can_act(model) && !ex_can_move(model) && CONTROL.state != TARGET_ATTACK)
			{
				ex_get_attacktargets(id, model.combat_range);
			}
			else{
			//ex_clear_pathing();
			//ex_clear_attacktargets();
			}
		}
	}
}