/// @description Insert description here
// You can write your code in this editor
hovered_tile = instance_position(mouse_x, mouse_y, ob_tileHex);
crosshair.visible = false;
crosshair.kills = false;
crosshair.attacker = noone;

move_indicator.visible = false;
move_indicator.sprite_index = sp_move_indictor;
if(CONTROL.state == TARGET_ATTACK && hovered_tile != noone)
{
	var m = hovered_tile.model;
	if(m!=noone)
	{
		if(m.owner != CONTROL.attacker.owner)
		{
			if(hovered_tile.target)
			{
				crosshair.x = m.x;
				crosshair.y = m.y;
				crosshair.depth = m.depth-1;
				crosshair.visible = true;
				if(ex_attack_kills(CONTROL.attacker, m))
				{
					crosshair.kills = true;
				}
				if(CONTROL.attacker.combat_range == MELEE)
				{
					if(m.combat_range == MELEE)
					{
						crosshair.sprite_index = sp_crosshair_both_melee;
						if(ex_attack_kills(m,CONTROL.attacker))
						{
							crosshair.attacker = CONTROL.attacker;
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
else if(CONTROL.state == TARGET_MOVE && hovered_tile != noone)
{
	if(hovered_tile.target)
	{
		move_indicator.x = hovered_tile.x;
		move_indicator.y = hovered_tile.y;
		move_indicator.depth = hovered_tile.depth-1;
		move_indicator.visible = true;
	}
}
else if(CONTROL.state == PLAY_MODEL && hovered_tile != noone)
{
	if(hovered_tile.target)
	{
		move_indicator.x = hovered_tile.x;
		move_indicator.y = hovered_tile.y;
		move_indicator.depth = hovered_tile.depth-1;
		move_indicator.visible = true;
		move_indicator.sprite_index = sp_target_indicator;
	}
}
else if(CONTROL.state == TARGET_BATTLECRY && hovered_tile != noone)
{
	if(hovered_tile.target)
	{
		move_indicator.x = hovered_tile.x;
		move_indicator.y = hovered_tile.y;
		move_indicator.depth = hovered_tile.depth-10;
		move_indicator.visible = true;
		move_indicator.sprite_index = sp_target_indicator;
	}
}