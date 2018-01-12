//End of Turn
with(ob_model)
{
	if(owner = ob_controller.current_turn)
	{
		if(stunned){
			if(has_move&&has_action){
				stunned = false
			}
		}
		if(disarmed){
			if(has_action){
				disarmed = false
			}
		}
		if(rooted){
			if(has_move){
				rooted = false
			}
		}
	}
}

if(ob_controller.current_turn = PLAYER1)
{
	ob_controller.current_turn = PLAYER2;
}else{
	ob_controller.current_turn = PLAYER1;
}

//Start of Turn
with(ob_model)
{
	if(owner = ob_controller.current_turn)
	{
		has_move = true;
		has_action = true;
		exhausted = false;
	}
	else
	{
		exhausted = true;
	}
}