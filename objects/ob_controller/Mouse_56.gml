/// @description 
if(hovered_tile != noone)
{
	if(CONTROL.state = TARGET_ATTACK)
	{
		with(hovered_tile)
		{
			if(model && !model.mortally_wounded && !model.pending_destroyed)
			{
				ex_hide_card(model);
				if(model.owner != ob_controller.current_turn && target)
				{
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
				}
			}
			else if(!target)
				ex_clear_nodes()
		}
	}
	else if(CONTROL.state == TARGET_MOVE)
	{
		with(hovered_tile)
		{
		if(target){
			var _node = self;
			while(_node.root != noone)
			{
				_node = _node.root;
			}
				ex_move_model(_node.model, _node, id);
			}
			else if(!model){
				ex_clear_nodes()
			}
			else if(model!=CONTROL.mover)
			{
				ex_floating_message(mouse_x, mouse_y, IN_THE_WAY_MESSAGE);
			}
		}
	}
	else if (CONTROL.state == PLAY_MODEL)
	{
		with(hovered_tile)
		{
			if(target)
			{
				ex_play_model(id, CONTROL.model_to_summon, CONTROL.current_turn, CONTROL.battlecry);
				ex_clear_nodes()
			}
		}
	}
	else if(CONTROL.state = TARGET_BATTLECRY)
	{
		
	}
	else
	{
		
	}
}