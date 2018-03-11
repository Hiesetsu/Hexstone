/// @description Insert description here
// You can write your code in this editor

if(!surface_exists(card_surface)){
	card_surface = surface_create(width, height);
}
surface_set_target(card_surface);
draw_clear_alpha(c_green, 0);
if(owner==PLAYER1 || room != rm_gameBoardNetworking){
	if(playable){
		draw_set_alpha(0.5);
		draw_set_color(c_green);
		draw_rectangle(0, 0, width, height, false);
		draw_set_color(c_white);
		draw_set_alpha(1);
	}
	draw_sprite(art, 0, width/2, height/2);
	draw_sprite(sprite_index, 0, width/2, height/2);
	draw_sprite(sp_SpellTypeRing, 0, width/2, height/2);
	draw_sprite(sp_cardManaCrystal, 0, width/2, height/2);

	draw_set_font(fo_belwe_Xlarge);
	ex_draw_text_centered_shadowed(cost_x, cost_y, string(cost_effective), c_white, fo_belwe_jumbo, 1);
	ex_draw_text_centered_shadowed(name_x, name_y, name, c_white, name_font, 1);
	ex_draw_text_centered_ext(text_x, text_y, text, c_black, text_font, 1, -1, width-50);
}else{
	draw_sprite_ext(spCardBackFleur, 0, width/2, height/2, 1, 1, 180, c_white, 1);
}
surface_reset_target();
var _c = dcos(image_angle);
var _s = dsin(image_angle);
var _x = sprite_width/2;
var _y = sprite_height/2;
//Crazy trig rotation magic.

draw_surface_ext(card_surface, x-_c*_x-_s*_y, y-_c*_y+_s*_x, image_xscale, image_yscale, image_angle, c_white, image_alpha);

//draw_surface_ext(card_surface, x-(width/2*image_xscale), y-(height/2*image_yscale), image_xscale, image_yscale, image_angle, c_white, image_alpha);
//draw_sprite_ext(mask_index, 0, x, y, image_xscale, image_yscale, image_angle, c_purple, 0.5);   