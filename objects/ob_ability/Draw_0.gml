/// @description
if(useable&&(owner == PLAYER1 || room != rm_gameBoardNetworking)){
	draw_sprite_ext(sp_abilityHalo, 0, x, y, 1.05, 1.05, 0, c_green, 1);
}
draw_self();
if(image_index == 0){
	ex_draw_text_centered_shadowed(x, y-8, "+1", c_white, fo_belwe_med, 1);
	draw_sprite(sp_mana_crystal, 0, x, y+26);
	ex_draw_text_centered_shadowed(x, y+26, "1", c_white, fo_belwe_med, 1);
}
