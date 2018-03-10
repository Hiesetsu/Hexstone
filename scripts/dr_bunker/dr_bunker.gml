///@function dr_bunker(model)
///@param {real} model
//Deathrattles are passed the model that called them
var _model = argument0
ex_log("--Deathrattle: Summon Marine");
ex_summon_model(_model.tile, ob_marine, _model.owner, false);