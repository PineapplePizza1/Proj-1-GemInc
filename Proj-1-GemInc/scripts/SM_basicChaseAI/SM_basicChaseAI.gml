///STATE MACHINE 1
//Structure: State Machine Scripts(SM) with transitions --> State Scripts(state) --> Timelines, Actions, and Behaviors (act and beh)

switch (argument0){
	case chaseEnum.patrol:
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
	case chaseEnum.shoot:
		break;
	default:
		show_debug_message("Error: Out of State Machine");
		hspeed = 0;
		break;
}


//whenever player is spotted, enter Chase state
if beh_detect_player_vision() != noone { //{and (timeline_position <440 or timeline_position > 500) }timeline position is the waiting period in Wait state
	//time period is for wait period
	currentState = chaseEnum.chase;
	timeline_position = 250;
}

//behavior for all states
util_jumpable();

//NOTE: you could do the entire stateMachine with a single timeline, if you plan out sections and repeats.
//then you just jump sections, based on states.
