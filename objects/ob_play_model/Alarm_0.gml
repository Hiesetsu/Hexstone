/// @description Reveal Card
// You can write your code in this editor
if(card){
	card.visible = true;
	card.x = x+card.sprite_width*0.75;
	card.y = y-card.sprite_height/3;
	
	if(card.y-card.sprite_height/2<0)
		card.y = 20+card.sprite_height/2;
}