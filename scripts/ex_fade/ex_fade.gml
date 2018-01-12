///@function ex_fade(property, speed)
///@param {real} speed speed at which to fade (0-1)
//0.9 = 40
//0.85 = 26
//0.8 = 19
var _s = argument0;

image_alpha = lerp(image_alpha, 0, _s);