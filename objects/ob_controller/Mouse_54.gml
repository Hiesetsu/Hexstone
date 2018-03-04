/// @description Insert description here
// You can write your code in this editor
if(hovered_tile != noone)
{
	with(hovered_tile)
	{
		if(model && !model.mortally_wounded && !model.pending_destroyed)
		{
			ex_hide_card(model);
			if(model.owner == ob_controller.current_turn && ex_can_act(model) && CONTROL.attacker = noone && CONTROL.mover = noone)
			{
				if(!source_node)
				{
					model.has_move = false;
					ex_get_attacktargets(id, model.combat_range);
					model.alarm[2] = room_speed/2;
				}
			}
			else
			{
				ex_clear_nodes()
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