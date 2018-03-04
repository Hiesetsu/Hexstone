/// @function ex_model_attack(attacker, defender)
/// @description 
/// @param {real} attacker id for a model object which is attacking
/// @param {real} defender id for a model object which is being attacked
var _attacker = argument0;
var _defender = argument1;
ex_clear_nodes();
//PROPOSE ATTACK
//Here we ask if there are any effects that care about the proposed attack, which may trigger and affect the state of the game before combat occurs

//CARRY OUT ATTACK
//Here, the attack happens if there is still a valid attacker and defender

if(_defender.combat_range == RANGED || _attacker.combat_range == RANGED)
{
	//Ranged attackers never take damage from their defender nor do they ever deal damage to their attacker
	ex_log("-"+CONTROL.player_to_string[?_attacker.owner]+"'s "+_attacker.name+" attacks "+CONTROL.player_to_string[?_defender.owner]+"'s "+_defender.name+" at range.");
	ex_attack(_attacker, _defender);
}
else
{
	//Melee attackers trade hits with melee defenders
	ex_log("-"+_attacker.name+" attacks "+_defender.name+" directly.");
	ex_attack(_attacker, _defender);
	ex_log("-"+CONTROL.player_to_string[?_defender.owner]+"'s "+_defender.name+" counter-attacks "+CONTROL.player_to_string[?_attacker.owner]+"'s "+_attacker.name);
	ex_attack(_defender, _attacker);
}
_attacker.has_action = false;

//AFTER ATTACK
//Here we ask if there are any effects that care about an attack ending which will take place after damage from combat is resolved and before deaths are processed


//PROCESS DEATH
//End of attack sequence, should update auras and remove the dead (just removing dead atm)
ex_process_deaths();































































































