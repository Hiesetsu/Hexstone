///@function ex_draw_text_centered(x, y, text, color, font, alpha, sep, width)
///@param {real} x
///@param {real} y
///@param {real} text
///@param {real} color
///@param {real} font
///@param {real} alpha
///@param {real} sep
///@param {real} width
var _x = argument0;
var _y = argument1;
var _text = argument2;
var _color = argument3;
var _font = argument4;
var _alpha = argument5;
var _sep = argument6;
var _width = argument7;
draw_set_font(_font);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_ext_color(_x, _y, _text, _sep, _width, _color, _color, _color, _color, _alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);