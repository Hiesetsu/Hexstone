///@description ne_save_control_state(message_type)
///@arg message_type
//Message type is the particular action taken. The rest is simply buffering the controller's state.
var _message_type = argument0;
var _data = buffer_create(128, buffer_grow, 1);
buffer_seek(_data, buffer_seek_start, 0);
buffer_write(_data, buffer_s8, _message_type);
buffer_write(_data, buffer_f32, CONTROL.mover);
buffer_write(_data, buffer_f32, CONTROL.attacker);
buffer_write(_data, buffer_f32, CONTROL.defender);
buffer_write(_data, buffer_f32, CONTROL.model_to_summon);
buffer_write(_data, buffer_f32, CONTROL.node_to_summon);
buffer_write(_data, buffer_f32, CONTROL.army_list_slot);
buffer_write(_data, buffer_f32, CONTROL.battlecry);
buffer_write(_data, buffer_f32, CONTROL.battlecry_target);
buffer_write(_data, buffer_f32, CONTROL.battlecry_val);
buffer_write(_data, buffer_f32, CONTROL.battlecry_log);
buffer_write(_data, buffer_f32, CONTROL.targeter);
buffer_write(_data, buffer_f32, CONTROL.card_to_play);
buffer_write(_data, buffer_f32, CONTROL.effect_being_targeted);
buffer_write(_data, buffer_f32, CONTROL.effect_value);
buffer_write(_data, buffer_f32, CONTROL.ability_used);
buffer_write(_data, buffer_f32, CONTROL.ability_value);
return _data;

