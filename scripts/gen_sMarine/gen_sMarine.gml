var _m = instance_create_depth(0, 0, 0, ob_model);
_m.name = "Marine Skirmisher";
_m.card_text = "Shielded.";
_m.art = sp_tMarine;
_m.full_art = sp_tMarineFullart;
_m.rarity = sp_common_rarity;

_m.att_base = 4;
_m.hp_base = 3;
_m.points_base = 4;
_m.shielded = true;
_m.combat_range = MELEE;

_m.att_effective = _m.att_base;
_m.hp_effective = _m.hp_base;
_m.points_effective = _m.points_base;
_m.hp_current = _m.hp_effective;
_m.MID = TMARINE;
return _m;