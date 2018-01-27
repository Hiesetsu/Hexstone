var _m = argument0;
var _can_move = _m.has_move && !_m.stunned && !_m.rooted && !_m.exhausted && !_m.mortally_wounded && !_m.pending_destroyed && !_m.immobile;
return _can_move;