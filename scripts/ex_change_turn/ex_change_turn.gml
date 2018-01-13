//End of Turn
with(ob_model)
{
	if(owner = CONTROL.current_turn)
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
	if(owner = CONTROL.current_turn)
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
with(ob_manabar)
{
	if(owner = CONTROL.current_turn)
	{
		if(mana_cap <= mana_cap_cap)
		{
			mana_cap+=mana_cap_ramp;
			mana_cap = mana_cap > mana_cap_cap ? mana_cap_cap : mana_cap;
		}
		if(mana_per_turn<mana_per_turn_cap)
		{
			mana_per_turn+=mana_ramp;
			mana_per_turn = mana_per_turn>mana_per_turn_cap?mana_per_turn_cap:mana_per_turn;
		}
		if(mana_current<mana_cap)
		{
			mana_current+=mana_per_turn;
			mana_current = mana_current>mana_cap?mana_cap:mana_current;
		}
	}
}
if(CONTROL.current_turn = PLAYER1)
{
	CONTROL.turn_number++;
}