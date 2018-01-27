//@clears pathing data off tiles and resets their color
with(ob_tileHex)
{
	//Whether this node can be moved to by the selected model
	target_node = false;
	//Cost to move to (essentially distance)
	g_val_target = 0;
	//The node which is the next closest to the origin node the model is on
	root_target = noone;
	//Node which the moving model is on
	targetting_node = false;
	
	image_blend = startColor;
}
CONTROL.targeter = noone;
CONTROL.targeting_occuring = false;
//list of all tiles which can be moved to
ds_list_empty(CONTROL.targetable_tiles);