/// @description Insert description here
// You can write your code in this editor
neighbors = noone;
model = noone;
passable = true;

//if true, this node is an eligible target
target = false;
//if true, this node is the source of an effect (movement, attacking, etc)
source_node = false;
//distance from a currently attacking or moving model
g_val_att = 0;
g_val = 0;
g_val_play = 0;
//next closest node to an attacking or moving model
root_att = noone;
root = noone;
root_play = noone;

//Grid position on control object
ex = 0;
wy = 0;

//Colors
col_moveTarget = $FFD37F
col_attackVacant = $9B97FE;
col_attackTarget = $362CC4;
col_summonTarget = $5ccf7b;
col_battlecryTarget = $2276f7