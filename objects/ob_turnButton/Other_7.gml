/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_index = 0;

if(ob_controller.current_turn == PLAYER1)
	{
		color = PLAYER1_COLOR;
		highlight = PLAYER1_HIGHLIGHT;
	}else{
		color = PLAYER2_COLOR;
		highlight = PLAYER2_HIGHLIGHT;
	}
	
	image_blend = color;
