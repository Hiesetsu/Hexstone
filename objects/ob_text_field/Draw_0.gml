/// @description 
draw_self();
draw_set_font(fo_belwe_med)
draw_set_color($FFFFFF);
draw_text(x-string_width(title)-margins, y+margins, title);
var i, h, ptext;
ptext = string_replace_all(text, @"\", "\\");
draw_text(x+margins, y+margins, ptext)
// add those useless fancy lines below the input:

i = string_width(string_copy(ptext, 1, caret))
h = string_height("\\")-2
if(focussed){
	draw_line(x + i+margins, y+margins, x + i+margins, y + h+margins)
}
i = string_width(text)
//draw_line(x - 3, y + h + 2, x + i + 2, y + h + 2)
//draw_line(x - 3, y + h + 4, x + i + 10, y + h + 4)
// key handling:
if (keyboard_check_pressed(vk_enter)) {
    //with (obj_log) {
    //    for (i = length - 1; i >= 0; i -= 1) text[i + 1] = text[i]
    //    length = min(maxlength, length + 1)
    //    text[0] = ptext
    //}
    //text = ""
    //caret = 0
}