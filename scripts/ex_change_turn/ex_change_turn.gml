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
		just_summoned = false;
	}
	else
	{
		exhausted = true;
	}
}
with(ob_manabar)
{
	if(!(CONTROL.turn_number == 0&&CONTROL.current_turn = PLAYER1)){
		if(owner != CONTROL.current_turn){
			ex_log("---Mana floated: "+string(mana_current)+"");
		}
	}
}
if(CONTROL.current_turn = PLAYER1)
{
	CONTROL.turn_number++;
	ex_log(
	@"	                      +------------------+
                      |Turn "+string(CONTROL.turn_number)+@" start|
                      +------------------+");
}
else
{
	
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
		
		ex_log("---Mana gained: "+string(mana_per_turn)+"");
	}
	else
	{

		if(!(CONTROL.current_turn = PLAYER1)){
			ex_log("   <--------------Bottom of turn "+string(CONTROL.turn_number)+"-------------->");
		}
	}
}
with(ob_ability){
	if(owner = CONTROL.current_turn){
		exhausted = false;
	}
	else{
		useable = false;
	}
}
au_applyStatAuras();
au_applyOtherAuras();
		