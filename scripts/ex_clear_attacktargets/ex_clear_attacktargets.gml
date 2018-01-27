//@clears pathing data off tiles and resets their color
with(ob_tileHex)
{
	//Whether this node can be attacked to by the selected model
	attack_node = false;
	//In range, but nothing to attack
	attack_node_empty = false;
	//distance from selected model
	g_val_att = 0;
	//next node closer to the attacking model
	root_att = noone;
	//node of attacking model
	attacking_node = false;

	image_blend = startColor;
}	
ds_list_empty(CONTROL.attackable_tiles);
CONTROL.defender = noone;
CONTROL.attacker = noone;
CONTROL.attacking_occurring = false;
CONTROL.taunt_in_range = false;