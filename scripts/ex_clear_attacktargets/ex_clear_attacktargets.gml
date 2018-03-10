//@clears pathing data off tiles and resets their color
with(ob_tileHex)
{
	//Whether this node can be attacked to by the selected model
	target = false;
	//distance from selected model
	g_val_att = 0;
	//next node closer to the attacking model
	root_att = noone;
	//node of attacking model
	source_node = false;

	//image_blend = startColor;
}	
ds_list_empty(CONTROL.attackable_tiles);
CONTROL.defender = noone;
CONTROL.attacker = noone;
CONTROL.taunt_in_range = false;