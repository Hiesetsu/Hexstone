///@function ex_floating_message(x, y, message)
///@param {real} x
///@param {real} y
///@param {string} message
var _x = argument0;
var _y = argument1;
var _m = argument2;

//Should only be one message at a time
with(ob_floating_message)
{
	instance_destroy();
}
var _fm = instance_create_depth(_x, _y, -100, ob_floating_message);
_fm.message = _m;