///STATE MACHINE 2: Shoot and Chase AI
//Basic Descr: Similar to Chase AI, but if you're on the same level, it: stops and shoots, before checking to patrol, chase, or shoot.

switch (argument0){
	case chaseEnum.patrol: //Same 
		state_chasePatrol();
		break;
	case chaseEnum.chase:
		state_chaseChase();
		break;
	case chaseEnum.wait:
		state_chaseWait();
		break;
	case chaseEnum.idle:
		hspeed = 0;
		break;
	case chaseEnum.disabled:
		state_chaseDisabled();
		break;
	case chaseEnum.shoot:
		state_StopnShoot(); //adding shoot script
		break;
	default:
		show_debug_message("Error: Out of State Machine");
		hspeed = 0;
		break;
}

//When player is on same level, stop and shoot.
if beh_detect_player_line() != noone and beh_detect_player_vision() != noone{
	currentState = chaseEnum.shoot;
}


//whenever player is spotted, enter Chase state
if beh_detect_player_vision() != noone and currentState != chaseEnum.disabled and currentState != chaseEnum.shoot{ //{and (timeline_position <440 or timeline_position > 500) }timeline position is the waiting period in Wait state
	//time period is for wait period
	currentState = chaseEnum.chase;
	timeline_position = 250;
}




//behavior for all states
util_jumpable();

