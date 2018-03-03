///@func ex_log(text)
///@param {string} text
//do NOT add uneccessary line breaks to logged items
CONTROL.log+=argument0+"\n";
with(ob_log){
	draw_set_font(fo_belwe_small);
	text_height = string_height_ext(CONTROL.log, -1, text_width);
	scroll_clip = max(0, text_height-log_height);
}