///@ex_draw_text_centered(x, y, text, color, font)
var _x = argument0;
var _y = argument1;
var _text = argument2;
var _color = argument3;
var _font = argument4;

draw_set_color(_color);
draw_set_font(_font);
draw_text(_x, _y, _text);
draw_set_color(c_white);
draw_set_font(-1);