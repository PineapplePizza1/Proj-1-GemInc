//runs state machines based off phase
switch(currentPhase) {
	case bossPhases.Chase:
	
		#region Entire Chase Script
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
		else {
			currentSpeed = 0;
			hspeed = 0;
		} //stop moving when damaged.


		//behavior for all states
		util_jumpable();

		#endregion
		
		break;
	case bossPhases.PathPatrol:
		
		break;
	case bossPhases.Firing:
		break;
	case bossPhases.Idle:
		break;
	default:
		break;
}