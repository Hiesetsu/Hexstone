///@ex_getpath(start_node, range)
ex_clear_nodes();

var _startNode = argument0;
var _range = argument1;

var _open, _closed;
var _currentNode, _neighborChecked;
var _tempG, _costMod;

_open = ds_priority_create()
_closed = ds_list_create();

ds_priority_add(_open, _startNode, _startNode.g_val);
while(ds_priority_size(_open)>0)
{
	_currentNode = ds_priority_delete_min(_open);
	ds_list_add(_closed, _currentNode);
	var _i = 0;
	for(_i =0; _i<ds_list_size(_currentNode.neighbors); _i++)
	{
		var _neighbor = _currentNode.neighbors[| _i];
		var _canPassThrough = _neighbor.model == noone;
		if(_startNode.model != noone && !_canPassThrough)
		{
			_canPassThrough = _startNode.model.owner == _neighbor.model.owner;
		}
		if(ds_list_find_index(_closed, _neighbor) == -1 && _neighbor.passable && _canPassThrough && 1+_currentNode.g_val<=_range)
		{
			var _priority = ds_priority_find_priority(_open, _neighbor);
			if(_priority == 0 || _priority = undefined)
			{
				_costMod = 1;
				_neighbor.root = _currentNode;
				_neighbor.g_val = _currentNode.g_val+1*_costMod;
				ds_priority_add(_open, _neighbor, _neighbor.g_val);
			}else{
				_costMod = 1;
				_tempG = _currentNode.g_val+1*_costMod;
				if(_tempG<_neighbor.g_val)
				{
					_neighbor.root = _currentNode;
					_neighbor.g_val = _tempG;
					ds_priority_change_priority(_open, _neighbor, _neighbor.g_val);
				}
			}
		}
	}
}
ds_priority_destroy(_open);
var _i = 0;
for(_i =0; _i<ds_list_size(_closed); _i++)
{
	_currentNode = _closed[| _i];
	if(_currentNode.model == noone)
		_currentNode.move_node = true;
}
_startNode.moving_node = true;
ds_list_copy(CONTROL.moveable_tiles, _closed);
CONTROL.moving_occurring = true;
CONTROL.mover = _startNode.model;
ds_list_destroy(_closed);


























