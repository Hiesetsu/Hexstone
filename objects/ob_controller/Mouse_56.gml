/// @description Insert description here
// You can write your code in this editor
if(hovered_tile != noone)
{
	with(hovered_tile)
	{
		if(model && !model.mortally_wounded && !model.pending_destroyed)
		{
		if(model.owner != ob_controller.current_turn && attack_node)
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
		else if(move_node){
			var _node = self;
			while(_node.root != noone)
			{
				_node = _node.root;
			}
			ex_move_model(_node.model, _node, id);
		}
		else
		{
			if(!attack_node)
				ex_clear_nodes()
		}
	}
}
else
{
	ex_clear_nodes()
}
//var _ob = instance_create_depth(mouse_x, mouse_y, -100, ob_floating_message);
//_ob.message = "A Model with Taunt is in the way";