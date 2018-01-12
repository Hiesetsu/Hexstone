/// @description Insert description here
// You can write your code in this editor
hovered_tile = instance_position(mouse_x, mouse_y, ob_tileHex);
crosshair.visible = false;
move_indicator.visible = false;
if(targeting_occurring && hovered_tile != noone)
{
	var m = hovered_tile.model;
	if(m!=noone)
	{
		if(m.owner != attacker.owner)
		{
			if(hovered_tile.attack_node)
			{
				crosshair.x = m.x;
				crosshair.y = m.y;
				crosshair.depth = m.depth-1;
				crosshair.visible = true;
			}
		}
	}
}
else if(moving_occurring && hovered_tile != noone)
{
	if(hovered_tile.move_node)
	{
		move_indicator.x = hovered_tile.x;
		move_indicator.y = hovered_tile.y;
		move_indicator.depth = hovered_tile.depth-1;
		move_indicator.visible = true;
	}
}