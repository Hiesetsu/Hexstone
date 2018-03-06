/// @description 
log_width = 17*17;
vert_squish = 16;
log_height = sprite_height-vert_squish;
left_margin = 8;
right_margin = 8;
top_margin = 8;
bottom_margin = 8;
//How many pixels DON'T fit in the area (text height-log height-top and bottom margins);
scroll_clip = 0;
//0-1, how far is scrolled
scroll_amount = 1;

font = fo_belwe_small;
draw_set_font(font);
line_height = string_height("test string");
//Total height of the text in the log. Must be updated when text is added to log.
text_height = 0;
//how wide the text is allowed to be before line breaks. Never updated.
text_width = log_width-right_margin-left_margin;
log_surface = surface_create(log_width, log_height);