///@description ex_kill_model(model)
var _model = argument0;
if(_model.tile)
{
	if(_model.tile.model == _model)
		_model.tile.model = noone;
}
instance_destroy(_model);