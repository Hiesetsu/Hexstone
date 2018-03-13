/// @description Insert description here
// You can write your code in this editor
if(async_load[?"type"]==network_type_data){
	var data = async_load[?"buffer"];
	var call_type = buffer_read(data, buffer_s8);
	switch(call_type){
		case NETWORK.end_turn:
		
		break;
		case NETWORK.moved:
		
		break;
		case NETWORK.attacked:
		
		break;
		case NETWORK.play_model:
		
		break;
		case NETWORK.play_card:
		
		break;
		case NETWORK.use_ability:
		
		break;
		case NETWORK.message:
		
		break;
		case NETWORK.connect:
		
		break;
	}
}