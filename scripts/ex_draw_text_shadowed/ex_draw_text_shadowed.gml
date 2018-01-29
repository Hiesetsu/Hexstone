///@function ex_draw_text_centered(x, y, text, color, font, alpha)
///@param {real} x
///@param {real} y
///@param {real} text
///@param {real} color
///@param {real} font
///@param {real} alpha
var _x = argument0;
var _y = argument1;
var _text = argument2;
var _color = argument3;
var _font = argument4;
var _alpha = argument5;
draw_set_font(_font);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_color(_x+1, _y+1, _text, c_black, c_black, c_black, c_black, _alpha);
draw_text_color(_x+1, _y-1, _text, c_black, c_black, c_black, c_black, _alpha);
draw_text_color(_x-1, _y-1, _text, c_black, c_black, c_black, c_black, _alpha);
draw_text_color(_x-1, _y+1, _text, c_black, c_black, c_black, c_black, _alpha);
draw_text_color(_x, _y, _text, _color, _color, _color, _color, _alpha);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_font(-1);