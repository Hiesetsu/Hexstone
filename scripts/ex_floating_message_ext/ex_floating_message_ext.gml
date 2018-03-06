///@function ex_floating_message(x, y, message, time)
///@param {real} x
///@param {real} y
///@param {string} message
///@param {real} time
var _x = argument0;
var _y = argument1;
var _m = argument2;
var _t = argument3;

var _fm = ex_floating_message(_x, _y, _m);
//Alarm 0 is used by floating messages to know when to start fading
_fm.alarm[0] = _t;