/// @function ex_model_attack(attacker, defender)
/// @description 
/// @param {real} attacker id for a model object which is attacking
/// @param {real} defender id for a model object which is being attacked
var _attacker = argument0;
var _defender = argument1;
ex_clear_attacktargets();
//PROPOSE ATTACK
//Here we ask if there are any effects that care about the proposed attack, which may trigger and affect the state of the game before combat occurs

//CARRY OUT ATTACK
//Here, the attack happens if there is still a valid attacker and defender

if(_defender.combat_range == RANGED || _attacker.combat_range == RANGED)
{
	//Ranged attackers never take damage from their defender nor do they ever deal damage to their attacker
	ex_deal_damage(_attacker, _defender);
}
else
{
	//Melee attackers trade hits with melee defenders
	ex_deal_damage(_attacker, _defender);
	ex_deal_damage(_defender, _attacker);
}
_attacker.has_action = false;
if(_defender.hp_current<=0)
{
	_defender.mortally_wounded = true;
}
if(_attacker.hp_current<=0)
{
	_attacker.mortally_wounded = true;
}

//AFTER ATTACK
//Here we ask if there are any effects that care about an attack ending which will take place after damage from combat is resolved and before deaths are processed


//PROCESS DEATH
//End of attack sequence, should update auras and remove the dead (just removing dead atm)
ex_process_deaths();































































































