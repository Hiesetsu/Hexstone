ex_clear_attacktargets();
ex_clear_pathing();
ex_clear_play();
CONTROL.state = DEFAULT_STATE;
CONTROL.battlecry_hint = "";
CONTROL.battlecry_log = "";
with(ob_dummy){
	instance_destroy();
}
with(ob_floating_message)
{
	if(stick_to_cursor){
		fade = true;
	}
}