/// @description 
draw_self();
ex_draw_text_shadowed(x+sprite_width/2, y-10, "+"+string((mana_per_turn+mana_ramp>mana_per_turn_cap?mana_per_turn_cap:mana_per_turn+mana_ramp)), c_white, fo_belwe_med, 1);
var i = 0;
for(i = 0; i <mana_cap; i++)
{
	//var blend;
	//if(i>=mana_cap-mana_current && owner = PLAYER1)
	//{
	//	blend = $F2B213;
	//}
	if(i<mana_current )//&& owner = PLAYER2)
	{
		blend = full_crystal;
	}
	else
	{
		blend = empty_crystal;
	}
	//if(owner == PLAYER2)
		draw_sprite_ext(sp_mana_crystal, 0, x-display_base+sprite_get_height(sp_mana_crystal)*i+display_mana_margin*i, y, 1, 1, 0, blend, 1);
	//else
		//draw_sprite_ext(sp_mana_crystal, 0, x+display_base-sprite_get_height(sp_mana_crystal)*i-display_mana_margin*i, y, 1, 1, 0, blend, 1);
	
}