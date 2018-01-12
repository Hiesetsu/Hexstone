/// @description Card Setup
// You can write your code in this editor
card = instance_create_depth(x, y, depth-1, ob_model_info);
card.visible = false;
card.att = att_base;
card.hp = hp_base;
card.pts = points_base;
card.combat_range = combat_range;
card.rarity = rarity;
card.art = full_art;
card.name = name;
card.text = card_text;

card.team = owner;
card.color = owner==PLAYER1?PLAYER1_HIGHLIGHT : PLAYER2_HIGHLIGHT;
card.image_blend = card.color;