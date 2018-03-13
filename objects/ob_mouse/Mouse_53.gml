/// @description Insert description here
// You can write your code in this editor
if(!CONTROL.locked){
	if(hovered_tile != noone && CONTROL.state != TARGET_BATTLECRY&& CONTROL.state != TARGET_CARD&& CONTROL.state != TARGET_ABILITY){
		with(hovered_tile){
			if(model && !model.mortally_wounded && !model.pending_destroyed){
				ex_hide_card(model);
				if(model.owner == ob_controller.current_turn && ex_can_move(model)){
					if(!source_node){
						ex_getpath(id, 2);
						model.alarm[2] = room_speed/2;
					}
					else{
						if(model.alarm[2] = -1){
							model.has_move = false;
							ex_clear_nodes()
						}
					}
				}
				else if(model.owner == ob_controller.current_turn && ex_can_act(model) && !ex_can_move(model) && CONTROL.state != TARGET_ATTACK){
					ex_get_attacktargets(id, model.combat_range);
				}
				else if(model.immobile && model.has_move && model.owner == ob_controller.current_turn ){
					ex_floating_message(mouse_x, mouse_y, IMMOBILE_MESSAGE);
				}
				else if(model.just_summoned && model.owner == ob_controller.current_turn ){
					ex_floating_message(mouse_x, mouse_y, SUMMONING_SICK_MESSAGE);
				}
				else if(!model.has_action && model.owner == ob_controller.current_turn ){
					ex_floating_message(mouse_x, mouse_y, ALREADY_ACTED_MESSAGE);
				}
			}
		}
	}
}