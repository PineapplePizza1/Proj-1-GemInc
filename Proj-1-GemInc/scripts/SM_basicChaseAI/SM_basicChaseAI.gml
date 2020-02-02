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
		//standard, just nothin
		hspeed = 0;
		break;
	default:
		show_debug_message("Error: Out of State Machine");
		hspeed = 0;
		break;
}



//NOTE: you could do the entire stateMachine with a single timeline, if you plan out sections and repeats.
//then you just jump sections, based on states.
