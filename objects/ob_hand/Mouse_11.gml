/// @description Insert description here
// You can write your code in this editor
if(selected_card){
	if(selected_card.playable&&CONTROL.current_turn=owner){
		CONTROL.state = TARGET_CARD;
		CONTROL.card_to_play = selected_card;
		script_execute(selected_card.targeting_rule, selected_card);
		selected_card.image_alpha = 0;
			var _play_hint = instance_create_depth(x, y, -100, ob_floating_message);
			_play_hint.message = selected_card.hint_text;
			_play_hint.stick_to_cursor = true;
			_play_hint.alarm[0]=-1;
	}
	else{
		selected_card.image_xscale = hand_scale;
		selected_card.image_yscale = hand_scale;
		selected_card = noone;
		hovered_card = noone;
	}
}
else if(hovered_card){
	hovered_card = noone;
}