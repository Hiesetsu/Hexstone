///@function ex_move_model(model, startNode, endNode)
/// @param {real} mover id of the moving model
/// @param {real} startNode id of the node being moved from
/// @param {real} endNode id of the node being moved to
var _model = argument0;
var _startNode = argument1;
var _endNode = argument2;

//PROPOSE MOVE
//Check if any effects care that this model is leaving its current space


//COMPLETE MOVE
//Move model to its destination space if it still can
_model.tile = _endNode;
_model.has_move = false;
_model.x = _endNode.x;
_model.y = _endNode.y;
_endNode.model = _model;
_startNode.model = noone;

ex_log("-"+CONTROL.player_to_string[?_model.owner]+"'s "+_model.name+" moved to "+string(_endNode.ex)+", "+string(_endNode.wy));

ex_clear_nodes();

//MOVE FINISH
//Check if any effects care that this model has entered its new space

//MOVE PHASE END
//Once all triggered phases have ended, process auras and deaths