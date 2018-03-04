/// @description Insert description here
// You can write your code in this editor
if(kills)
{
	draw_sprite(sp_crosshair_skull, 0, x, y);
}
draw_self();
if(attacker)
{
	draw_sprite(sp_crosshair_skull, 0, attacker.x, attacker.y);
}