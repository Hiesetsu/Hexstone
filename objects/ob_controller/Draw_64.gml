/// @description Insert description here
// You can write your code in this editor
if(DEBUG)
{
	var line = linebreak;
	draw_rectangle_color(debug_x-20, debug_y, room_width-20, 680, c_black, c_black, c_black, c_black, false);
	ex_draw_text_font(debug_x, debug_y+line, "Turn: "+string(turn_number), c_white, fo_belwe_med);
	line+=linebreak;
	ex_draw_text_font(debug_x, debug_y+line, "Turn: "+player_to_string[?current_turn], c_white, fo_belwe_med);
	line+=linebreak;
	var hoveredTile = hovered_tile == noone ? "None" : string(hovered_tile.ex)+", "+string(hovered_tile.wy);
	ex_draw_text_font(debug_x, debug_y+line, "Tile: "+hoveredTile, c_white, fo_belwe_med);
	line+=linebreak;
	if(hovered_tile != noone)
	{
		var _hoveredModel = hovered_tile.model;
		if(_hoveredModel !=noone)
		{
			ex_draw_text_font(debug_x, debug_y+line, "Model: "+_hoveredModel.name, c_white, fo_belwe_med);
			line+=linebreak;
			var _statLine = "Pts: "+string(_hoveredModel.points_effective)+" Att: "+string(_hoveredModel.att_effective)+
			string(range_to_string[?_hoveredModel.combat_range])+" Hp: "
			+string(_hoveredModel.hp_current)+"/"+string(_hoveredModel.hp_effective);
			ex_draw_text_font(debug_x, debug_y+line, _statLine, c_white, fo_belwe_med);
			line+=linebreak;
			ex_draw_text_font(debug_x, debug_y+line, "Rarity: "+string(rarity_to_string[?_hoveredModel.rarity]), c_white, fo_belwe_med);
			line+=linebreak;
			ex_draw_text_font(debug_x, debug_y+line, "Move: "+string(_hoveredModel.has_move)+" Action: "+string(_hoveredModel.has_action), c_white, fo_belwe_med);
			line+=linebreak;
		}
	}
}