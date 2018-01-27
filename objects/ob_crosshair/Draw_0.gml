/// @description Insert description here
// You can write your code in this editor
draw_self();
if(kills)
{
	draw_sprite(sp_crosshair_skull, 0, x, y);
}
if(attacker)
{
	draw_sprite(sp_crosshair_skull, 0, attacker.x, attacker.y);
}