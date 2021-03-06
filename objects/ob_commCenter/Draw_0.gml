/// @description Insert description here
// You can write your code in this editor
var _haloColor = $000000;
if(ex_can_move(id) && ob_controller.current_turn = owner)
{
	draw_sprite_ext(sp_baseHalo, 0, x, y, 1, 1, 0, $00DD00, 0.90);
}else if(ex_can_act(id) && ob_controller.current_turn = owner){
	draw_sprite_ext(sp_baseHalo, 0, x, y, 1, 1, 0, $00FFFF, 0.90);
}
draw_self();
draw_sprite(art, 0, x, y);
var attack_color = att_effective>att_base ? c_lime : c_white;
var hp_color = hp_current>hp_base ? c_lime : c_white;
hp_color = hp_current<hp_effective ? c_red : hp_color;
draw_sprite(sp_stat_slate, 0, x+hp_displayX, y+hp_displayY);
ex_draw_text_centered_shadowed(x+hp_displayX, y+hp_displayY, string(hp_current), hp_color, fo_belwe_large, 1);
//draw_sprite(sp_stat_slate, 0, x+range_displayX, y+range_displayY);
if(att_effective>0)
{
	draw_sprite(sp_stat_slate, 0, x+att_displayX, y+att_displayY);
	ex_draw_text_centered_shadowed(x+att_displayX-1, y+att_displayY, string(att_effective), attack_color, fo_belwe_med, 1);
	ex_draw_text_centered_shadowed(x+range_displayX, y+range_displayY, combat_range==RANGED?"R":"M", c_white, fo_belwe_small, 1);
}

if(shielded)
{
	var c = owner==PLAYER1 ? PLAYER1_COLOR : PLAYER2_COLOR;
	draw_sprite_ext(sp_shield, 0, x, y, 1, 1, 0, $37ACf7, 1);
}