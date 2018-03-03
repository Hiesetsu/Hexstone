/// @description
if(!surface_exists(log_surface)){
	log_surface = surface_create(log_width, log_height);
}
surface_set_target(log_surface);
draw_set_color(c_black);
draw_rectangle(0, 0, log_width, log_height, false);
draw_set_color(c_white);
draw_set_font(fo_belwe_small);
draw_text_ext(left_margin, (-scroll_amount * scroll_clip), CONTROL.log, -1, text_width)
surface_reset_target()
draw_surface(log_surface, x-log_width-9, y+vert_squish/2)
draw_self();
var circle_y = clamp(y+sprite_height*(scroll_amount), y+8, y+sprite_height-10);
draw_set_color(c_white);
draw_circle(x-9, circle_y, 5, false)
draw_set_color(c_black);
draw_circle(x-9, circle_y, 5, true)
draw_set_color(c_white);
