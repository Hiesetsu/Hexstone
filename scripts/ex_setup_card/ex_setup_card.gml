///@func ex_setup_card(model)
///@param {real} model
//Card Setup
var _model = argument0;
_model.card = instance_create_depth(x, y, -100, ob_model_info);
_model.card.visible = false;
_model.card.att = _model.att_base;
_model.card.hp = _model.hp_base;
_model.card.pts = _model.points_base;
_model.card.combat_range = _model.combat_range;
_model.card.rarity = _model.rarity;
_model.card.art = _model.full_art;
_model.card.name = _model.name;
_model.card.text = _model.card_text;
_model.card.type_text = CONTROL.tag_to_string[?_model.type]==undefined?noone:CONTROL.tag_to_string[?_model.type];
_model.card.tribe_text = CONTROL.tag_to_string[?_model.tribe]==undefined?noone:CONTROL.tag_to_string[?_model.tribe];


_model.card.team = _model.owner;
_model.card.color = _model.owner==PLAYER1?PLAYER1_HIGHLIGHT : PLAYER2_HIGHLIGHT;
_model.card.image_blend = _model.card.color;