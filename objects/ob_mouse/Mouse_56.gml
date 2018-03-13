/// @description 
if(hovered_tile != noone && !CONTROL.locked)
{
	switch(CONTROL.state){
		case TARGET_MOVE:
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
		break;
		case TARGET_ATTACK:
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
								//NETWORK: Send message here
								ex_model_attack(CONTROL.attacker, model);
							}
						}
						else if(model.stealthed){
							ex_floating_message(mouse_x, mouse_y, STEALTH_MESSAGE);
						}
						else{
							//NETWORK: Send message here
							ex_model_attack(CONTROL.attacker, model);
						}		
					}
				}
			else if(!target)
				ex_clear_nodes()
		}
		break;
		case PLAY_MODEL: 
			with(hovered_tile)
			{
				if(target)
				{
					//NETWORK: Send message here
					ex_play_model(id, CONTROL.model_to_summon, CONTROL.current_turn, CONTROL.battlecry);
					if(!CONTROL.battlecry)
					{
						ex_clear_nodes();
					}
				}
			}
		break;
		case TARGET_BATTLECRY:
			with(hovered_tile)
			{
				if(target){
					if(model &&model.stealthed){
							ex_floating_message(mouse_x, mouse_y, STEALTH_MESSAGE);
					}
					else{
						if(CONTROL.battlecry_log != ""){
							ex_log(CONTROL.battlecry_log);
						}
						//NETWORK: Send message here
						//Script, the targeted node, the value (all set by the battlecry on the model as its played)
						script_execute(CONTROL.battlecry, id, CONTROL.battlecry_val);
						ex_play_model_from_box(CONTROL.node_to_summon, CONTROL.model_to_summon, CONTROL.current_turn);
						ex_clear_nodes();
						//PROCESS DEATH that may have been caused by the battlecry
						ex_process_deaths();
					}
				}
			}
		break;
		case TARGET_CARD:
			with(hovered_tile)
			{
				if(target){
					if(model &&model.stealthed){
							ex_floating_message(x, y, STEALTH_MESSAGE);
					}
					else{
						if(CONTROL.card_to_play.log != ""){
							ex_log(CONTROL.card_to_play.log);
						}
						//NETWORK: Send message here
						//Script, the targeted node, the value of the effect, reference to card
						var _card = CONTROL.card_to_play;
						ex_pay_mana(_card.owner, _card.cost_effective);
						script_execute(_card.effect, id, _card.effect_value, _card);
						ex_clear_nodes();
						//PROCESS DEATH that may have been caused by the card's effect
						ex_process_deaths();
					}
				}
			}
		break;
		case TARGET_ABILITY:
		//NETWORK: Send message here
		break;
		
		default: 
		
		break;
	}
}
else{
		
}
