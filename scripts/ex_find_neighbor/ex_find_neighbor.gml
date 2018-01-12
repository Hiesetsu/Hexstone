///@ex_find_neighbor(tile, dir);
//Goes through a tile's neighbors looking for one in the direction requested, and returns it if found.
//returns noone if there are no neighbors in the requested direction.
var _tile = argument0;
var _dir = argument1;

#macro NORTH 0
#macro NORTH_EAST 1
#macro SOUTH_EAST 2
#macro SOUTH  3
#macro SOUTH_WEST 4
#macro NORTH_WEST 5

var _i = 0;
var _neighbor_dir = -1;
for(i = 0; i<ds_list_size(_tile.neighbors); i++)
{
	var n = _tile.neighbors[| i];
	if n.x < _tile.x
	{
		if n.y > _tile.y
			_neighbor_dir = SOUTH_WEST;
		else
			_neighbor_dir = NORTH_WEST;
	}
	else if n.x > _tile.x
	{
		if n.y > _tile.y
			_neighbor_dir = SOUTH_EAST;
		else
			_neighbor_dir = NORTH_EAST;
	}
	else if n.y > _tile.y
		_neighbor_dir = SOUTH;
	else if n.y < _tile.y
		_neighbor_dir = NORTH;
	
	if _neighbor_dir = _dir
		return n;
}
return noone;