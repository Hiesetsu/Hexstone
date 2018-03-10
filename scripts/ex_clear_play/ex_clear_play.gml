//@clears pathing data off tiles and resets their color
with(ob_tileHex)
{
	//Whether this node can be moved to by the selected model
	target = false;
	//Cost to move to (essentially distance)
	g_val_play = 0;
	//image_blend = startColor;
}
CONTROL.model_to_summon = noone;
CONTROL.node_to_summon = noone;
CONTROL.battlecry = noone;
CONTROL.battlecry_target = noone;
CONTROL.battlecry_val = noone;
CONTROL.army_list_slot = noone;