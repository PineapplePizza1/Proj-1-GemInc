///@descr Altered version of SM_chaseShootAI

#region Entire Chase Script
		
		switch (currentState){
			case chaseEnum.patrol: //Same 
				timeline_speed = 1;
				state_chasePatrol();
				break;
			case chaseEnum.chase:
				timeline_speed = 2;
				state_chaseChase();
				break;
			case chaseEnum.wait:
				timeline_speed = 1;
				state_chaseWait();
				break;
			case chaseEnum.idle:
				hspeed = 0;
				break;
			case chaseEnum.disabled:
				state_chaseDisabled();
				break;
			case chaseEnum.shoot:
				timeline_speed = 2;
				state_Boss2(); //Boss's keep shooting script
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
			if beh_detect_player_vision() != noone{ 
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

		#endregion