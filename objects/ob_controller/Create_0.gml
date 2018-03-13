/// @description 
#macro DEBUG true
#macro LOG_AURA true
#macro LOG_ENCHANTMENT false
#macro CONTROL ob_controller

//Should only be one controller
var _self = id;
with(object_index){
	if(id!=_self){
		instance_destroy(_self);
	}
}
//If you're on play, you go first
on_play = true;
persistent = true;

current_turn = PLAYER2;
winner = noone;
turn_number = 0;
model_limit = 10;
player1_model_count = 0;
player2_model_count = 0;
moveable_tiles = ds_list_create();
attackable_tiles = ds_list_create();
targetable_tiles = ds_list_create();

log = "Game Start\n";

//////////////////////////////////////////////////////////////////////////////////////////

//States
#macro DEFAULT_STATE 0
#macro PLAY_MODEL 1
#macro TARGET_MOVE 2
#macro TARGET_ATTACK 3
#macro TARGET_BATTLECRY 4
#macro TARGET_ABILITY 5
#macro TARGET_CARD 6
#macro CHOOSE_CARD 7
#macro CONTROL_LOCKED 8

state = DEFAULT_STATE;
locked = false;

hovered_tile = noone;

tile_list = noone;

model_to_summon = noone;
node_to_summon = noone;
army_list_slot = noone;
battlecry = noone;
//target of battlecry (BATTLECRY EFFECTS MUST BE ORDERED TARGET, VALUE)
battlecry_target = noone;
//values to be used by battlecry script (may be an array or list to pass more complex values)
battlecry_val = 0;
battlecry_hint = "";
battlecry_log = "";

ability_used = noone;
ability_value = 0;

card_to_play = noone;
//************************//
effect_being_targeted = noone;
effect_value = 0;
targeter = noone;
//************************//
attacker = noone;
defender = noone;
//************************//
mover = noone;
//************************//
taunt_in_range = false;
////////////////////////////////////////////////////////////////////////////////////////////

debug_x = room_width-280;
debug_y = 20;
linebreak = 20;

mouse = instance_create_depth(x, y, ob_mouse, depth);
alarm[0] = 1;
#macro COMMANDCENTER 12

//Tags
#macro TROOP 0
#macro VEHICLE 1
#macro STRUCTURE 2

#macro MARINE 3
#macro SCOUT 4
#macro ELITE 5
#macro WALKER 6
#macro DRONE 11

#macro HUNTER 7
#macro CLERIC 8
#macro SOLDIER 9
#macro CRUSADER 10

//Special Rules
#macro FLANKING 1
#macro DEEPSTRIKE 2
#macro AMBUSH 3

//Aura function rules
#macro RUN_ENCHANTMENT 0
#macro RETURN_NAME 1
#macro REVERSE_ENCHANTMENT 2

//Factions
enum FACTIONS{
	federation,
	noire,
	skelemancers,
	demons,
	bugs
}

//Floating Messages
#macro TAUNT_MESSAGE "A Model with Taunt is in the way"
#macro STEALTH_MESSAGE "You cannot directly target models with stealth"
#macro IN_THE_WAY_MESSAGE "A Model is in the way"
#macro SUMMONING_SICK_MESSAGE "Models can't act the turn they're summoned"
#macro IMMOBILE_MESSAGE "That model is immobile."
#macro CANT_ATTACK_MESSAGE "That model cannot aact."
#macro ALREADY_ACTED_MESSAGE "That model already acted."
#macro NOT_ENOUGH_MANA_MESSAGE "Not enough mana."
#macro TOO_MANY_MODELS_MESSAGE "You have too many models!"
#macro NO_ONE_TO_AMBUSH_MESSAGE "There's no one to ambush."

//Timing
#macro SECOND room_speed
#macro HALF_SECOND  room_speed/2
#macro QUARTER_SECOND room_speed/4

//NETWORKING
enum NETWORK{
	play_model,
	moved,
	attacked,
	play_card,
	message,
	use_ability,
	end_turn,
	connect
}
socket = network_create_socket(network_socket_tcp);
port = 42069;
server = network_create_server(network_socket_tcp, port, 8);
while(server<0&&port<65535){
	port++;
	server = network_create_server(network_socket_tcp, port, 8);
}
ex_macro_to_string_maps();

