/// @description Insert description here
// You can write your code in this editor
#macro TILE_HEIGHT 60
#macro TILE_WIDTH 68
#macro GRID_W 9
#macro GRID_H 7
gTiles = ds_grid_create(GRID_W, GRID_H);
image_blend = $84BC7C;

var i = 0;
var j = 0;
for (i = 0; i<GRID_W; i++)
{
	for(j = 0; j<GRID_H; j++)
	{
		var yoffset = (i%2)==0 ? 0 : TILE_HEIGHT/2;
		if(yoffset!=0)
		{
			if(j==GRID_H-1)
			{
				ds_grid_add(gTiles, i, j, noone);
				break;
			}
		}
		var tile = instance_create_depth(x+i*TILE_WIDTH*0.75, y+j*TILE_HEIGHT+yoffset, depth-1, ob_tileHex);
		tile.ex = i;
		tile.wy = j;
		tile.image_blend = tile.startColor;
		ds_grid_add(gTiles, i, j, tile);
	}
}
for (i = 0; i<GRID_W; i++)
{
	for(j = 0; j<GRID_H; j++)
	{
		var t = gTiles[# i, j];
		if(t != noone)
		{
			var n = collision_circle_list(t.x, t.y, t.sprite_width-10, ob_tileHex, true, true);
			t.neighbors = n;
		}
	}
}

var t = gTiles[# 5, 5];
ex_summon_model(t, ob_marine, PLAYER1);
t = gTiles[# 3, 5];
ex_summon_model(t, ob_scout, PLAYER1);
t = gTiles[# 3, 4];
ex_summon_model(t, ob_sMarine, PLAYER1);
t = gTiles[# 4, 5];
ex_summon_model(t, ob_tMarine, PLAYER1);
t = gTiles[# 5, 0];
ex_summon_model(t, ob_marine, PLAYER2);
t = gTiles[# 5, 1];
ex_summon_model(t, ob_tMarine, PLAYER2);
t = gTiles[# 4, 1];
ex_summon_model(t, ob_sMarine, PLAYER2);
t = gTiles[# 3, 0];
ex_summon_model(t, ob_scout, PLAYER2);
t = gTiles[# 4, 6];
ex_summon_commandcenter(t, ob_commCenter, PLAYER1);
t = gTiles[# 4, 0];
ex_summon_commandcenter(t, ob_commCenter, PLAYER2);

CONTROL.tile_list = gTiles;