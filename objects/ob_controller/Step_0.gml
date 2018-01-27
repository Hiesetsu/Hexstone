/// @description Insert description here
// You can write your code in this editor
hovered_tile = instance_position(mouse_x, mouse_y, ob_tileHex);
crosshair.visible = false;
crosshair.kills = false;
crosshair.attacker = noone;

move_indicator.visible = false;
move_indicator.sprite_index = sp_move_indictor;
if(attacking_occurring && hovered_tile != noone)
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
				if(ex_attack_kills(attacker, m))
				{
					crosshair.kills = true;
				}
				if(attacker.combat_range == MELEE)
				{
					if(m.combat_range == MELEE)
					{
						crosshair.sprite_index = sp_crosshair_both_melee;
						if(ex_attack_kills(m,attacker))
						{
							crosshair.attacker = attacker;
						}
					}
					else
					{
						crosshair.sprite_index = sp_crosshair_melee;
					}
				}
				else
				{
					crosshair.sprite_index = sp_crosshair;
				}
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
else if(targeting_occuring && hovered_tile != noone)
{
	if(hovered_tile.target_node)
	{
		move_indicator.x = hovered_tile.x;
		move_indicator.y = hovered_tile.y;
		move_indicator.depth = hovered_tile.depth-1;
		move_indicator.visible = true;
		move_indicator.sprite_index = sp_target_indicator;
	}
}