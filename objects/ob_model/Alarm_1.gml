/// @description Reveal card
// You can write your code in this editor
card.visible = true;
card.x = x+card.sprite_width*0.75;
card.y = y-card.sprite_height/3;

//if(card.x+card.sprite_width/2+20 > view_get_wport(0))
	//card.x -= (view_get_wport(0)-card.x-20-card.sprite_width/2);
//if(card.x-20-card.sprite_width/2<0)
	//card.x = 20+card.sprite_width/2;
//if(card.y+card.sprite_height/2+20 > view_get_yport(0))
	//card.y -= (view_get_yport(0)-card.y-20-card.sprite_height/2);
if(card.y-card.sprite_height/2<0)
	card.y = 20+card.sprite_height/2;