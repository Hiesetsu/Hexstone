var _haloColor = $000000;
if(CONTROL.current_turn==owner)
{
	if(activated)
	{
		draw_sprite_ext(sp_roundHalo, 0, x, y, 1, 1, 0, $00DDFF, 0.80);
	}else if(playable){
		draw_sprite_ext(sp_roundHalo, 0, x, y, 1, 1, 0, $00DD00, 0.80);
	}
}
draw_self();
draw_sprite(art, 0, x, y);
var cost_color = c_white;
var attack_color = c_white;
var hp_color = c_white;
draw_sprite(sp_stat_slate, 0, x+cost_displayX, y+cost_displayY);
ex_draw_text_centered_shadowed(x+cost_displayX-1, y+cost_displayY, string(cost_display), cost_color, fo_belwe_med, 1);
draw_sprite(sp_stat_slate, 0, x+att_displayX, y+att_displayY);
ex_draw_text_centered_shadowed(x+att_displayX-1, y+att_displayY, string(attack_display), attack_color, fo_belwe_med, 1);
draw_sprite(sp_stat_slate, 0, x+hp_displayX, y+hp_displayY);
ex_draw_text_centered_shadowed(x+hp_displayX, y+hp_displayY, string(health_display), hp_color, fo_belwe_med, 1);
if(attack_display>0)
{
	ex_draw_text_centered_shadowed(x+range_displayX, y+range_displayY, combat_range==RANGED?"R":"M", c_white, fo_belwe_small, 1);
}
ex_draw_text_shadowed(x+numberX, y+numberY, "x"+string(number_held), c_white, fo_belwe_med, 1);
if(summon_rule)
{
	ex_draw_text_shadowed(x+summonX, y+summonY, CONTROL.rule_to_string[?summon_rule], c_white, fo_belwe_small, 1);
}