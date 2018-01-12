var _m = instance_create_depth(0, 0, 0, ob_model);
_m.name = "Scout";
_m.art = sp_scout;
_m.full_art = sp_scoutFullArt;

_m.att_base = 2;
_m.hp_base = 1;
_m.points_base = 1;

_m.combat_range = RANGED;

_m.att_effective = _m.att_base;
_m.hp_effective = _m.hp_base;
_m.points_effective = _m.points_base;
_m.hp_current = _m.hp_effective;
_m.MID = SCOUT;
return _m;