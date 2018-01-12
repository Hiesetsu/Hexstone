/// @description Insert description here
// You can write your code in this editor
if(hovered_tile != noone)
{
	with(hovered_tile)
	{
		if(model && !model.mortally_wounded && !model.pending_destroyed)
		{
			if(model.owner == ob_controller.current_turn && ex_can_move(model))
			{
				if(!moving_node)
				{
					ex_getpath(id, 2);
					model.alarm[2] = room_speed/2;
				}
				else
				{
					if(model.alarm[2] = -1)
					{
						model.has_move = false;
						ex_clear_pathing();
					}
				}
			}
			else if(model.owner == ob_controller.current_turn && ex_can_act(model) && !model.has_move)
			{
				ex_gettargets(id, model.combat_range);
			}
			else if(model.owner != ob_controller.current_turn && attack_node)
			{
				if(CONTROL.taunt_in_range)
				{
					if(!model.taunt)
					{
						var m = instance_create_depth(mouse_x, mouse_y, -100, ob_floating_message);
						m.message = TAUNT_MESSAGE;
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
		else if(move_node){
			var _node = self;
			while(_node.root != noone)
			{
				_node = _node.root;
			}
			ex_move_model(_node.model, _node, id);
		}
		else{
			ex_clear_pathing();
			ex_clear_attacktargets();
		}
	}
}
//var _ob = instance_create_depth(mouse_x, mouse_y, -100, ob_floating_message);
//_ob.message = "A Model with Taunt is in the way";