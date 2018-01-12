/// @description Insert description here
// You can write your code in this editor
if(art != noone)
	draw_sprite(art, 0, x, y);
draw_self();

ex_draw_text_centered(x+pts_x, y+pts_y, string(pts), c_white, fo_belwe_large);
ex_draw_text_centered(x+att_x, y+att_y, string(att), c_white, fo_belwe_large);
ex_draw_text_centered(x+hp_x, y+hp_y, string(hp), c_white, fo_belwe_large);
draw_sprite(rarity, 0, x+rarity_x, y+rarity_y);
var range = combat_range==MELEE?"M":"R";
ex_draw_text_centered(x+range_x, y+range_y, string(range), c_white, fo_belwe_large);
ex_draw_text_centered_shadowed(x+name_x, y+name_y, name, c_white, fo_belwe_med, 1);
ex_draw_text_centered_shadowed(x+text_x, y+text_y, text, c_white, fo_belwe_med, 1);