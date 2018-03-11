///@description ex_target_all_characters()

with(ob_model)
{
	if(!(stealthed||elusive)){
		tile.target = true;
	}
}