///STATE MACHINE 3: flying AI
//Basic Descr: similar to shooting chase AI, but flies on a path, and only shoots from a distance

switch (argument0){
	case chaseEnum.patrol: //Same 
		state_flyingpath(); //Start following path if not on path. return to orig position
		break;
	case chaseEnum.chase:
		state_flyingchase();
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
		state_flyingchase(); //adding shoot script
		break;
	default:
		show_debug_message("Error: Out of State Machine");
		hspeed = 0;
		break;
}

if  currentState != chaseEnum.disabled{
//When player is on same level, stop and shoot.
if beh_detect_player_line() != noone and beh_detect_player_vision() != noone and damaged == false{
	currentState = chaseEnum.shoot;
}


//whenever player is spotted, enter Chase state
if beh_detect_player_vision() != noone and currentState != chaseEnum.shoot{ //{and (timeline_position <440 or timeline_position > 500) }timeline position is the waiting period in Wait state
	//time period is for wait period
	currentState = chaseEnum.chase;
	timeline_position = 250;
}
}


if damaged == false {
	if currentState == chaseEnum.disabled then flashval = 0.1
	else flashval = 1.0;
}


//behavior for all states
util_jumpable();

