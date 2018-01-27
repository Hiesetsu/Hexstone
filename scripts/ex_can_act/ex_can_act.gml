var _m = argument0;
var _can_att= _m.has_action && !_m.stunned && !_m.disarmed && !_m.exhausted && !_m.cannot_attack && !_m.mortally_wounded && !_m.pending_destroyed && (_m.att_effective>0 || _m.ability != noone);
return _can_att;