/// @description 
caret_move = max(0, caret_move - 1)
if (keyboard_check(vk_left) != keyboard_check(vk_right)) {
    if (caret_move == 0) {
        if (keyboard_check(vk_left)) {
            if (caret > 0) caret -= 1
        } else {
            if (caret < string_length(text)) caret += 1
        }
        caret_move = caret_move_rate
    }
} else caret_move = 0
if (keyboard_check_pressed(vk_home)) caret = 0
if (keyboard_check_pressed(vk_end)) caret = string_length(text)
if (keyboard_check_pressed(vk_delete)) {
    text = string_delete(text, caret + 1, 1)
}
// actual input:
if (keyboard_string != filltext && keyboard_string != "" && focussed) {
    var n, l, t;
    t = keyboard_string
    l = string_length(t)
    n = 1
    // find where actual input starts
    while ((n <= l) && (string_char_at(t, n) == fillchar)) n += 1
    var c = 11 - n
    if (c > 0 && caret > 0) {
        caret -= c
        text = string_delete(text, caret + 1, c)
    }
    c = l - n + 1
    if (c > 0) {
					var _char = string_copy(t, n, c);
					if(num_only){
						if(allow_dot){
							if(_char == "."){
							}
							else{
							_char = string_digits(_char);
							}
						}
						else{
							_char = string_digits(_char);
						}
					}
					if(string_length(text)<character_limit){
      text = string_insert(_char, text, caret + 1)
      caret += c
					}
    }
				keyboard_string = filltext
}

caret = max(0, min(caret, string_length(text)))