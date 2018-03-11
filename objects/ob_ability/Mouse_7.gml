/// @description
if(useable){
	var _owner = owner;
	var _hand = noone;
	with(ob_hand){
		if(owner == _owner){
			_hand = id;
		}
	}
	if(_hand){
		script_execute(ability_effect, _hand);
			image_index = 1;
			counter++;
			exhausted = true;
			useable = false;
			ex_pay_mana(owner, cost_effective);
	}
}
