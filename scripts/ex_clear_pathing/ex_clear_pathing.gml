//@clears pathing data off tiles and resets their color
with(ob_tileHex)
{
	//Whether this node can be moved to by the selected model
	move_node = false;
	//Cost to move to (essentially distance)
	g_val = 0;
	//The node which is the next closest to the origin node the model is on
	root = noone;
	//Node which the moving model is on
	moving_node = false;
	
	image_blend = startColor;
}
CONTROL.mover = noone;
CONTROL.moving_occurring = false;
//list of all tiles which can be moved to
ds_list_empty(CONTROL.moveable_tiles);