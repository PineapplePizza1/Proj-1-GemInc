///STATE MACHINE 3: flying AI
//Basic Descr: similar to shooting chase AI, but flies on a path, and only shoots from a distance

switch (argument0){
	case chaseEnum.patrol: //Same 
		state_flyingpath(); //Start following path if not on path. return to orig position
		break;
	case chaseEnum.chase:
		state_flyingchase();
		break;
	case chaseEnum.wait: //use as return script
		state_flyingreturn();
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
//have transitions for start path, end path, and continue path.
//store the variables of where you left path, and mp_motion_step back to where you left.

//on path, leave, get back on path, when gone. 
//shoot, like every once in a while if can.

//if see player, chase and take steps towards player. 
//Only shoot if you can see them, only takes a second. keep taking steps, as behavior. 
//activate shoot as timeline!!! standard shoot might be good.
//return to path if outside bounds or don't see player.
//maybe create a wall object that player can pass through, but enemies can't. safe zone. hard with collisions tho.


//whenever player is spotted, enter Chase state if within chase distance.
sensor = beh_detect_player_vision();
if sensor != noone 
	{	

		if point_distance(x,y, sensor.x, sensor.y) < chaseDist
		{
			//transition out of patrol, preserve old vars
			if currentState == chaseEnum.patrol {
				//returnPosition = path_position;
				//pathX = path_get_x(flightPath, returnPosition);
				//pathY = path_get_y(flightPath, returnPosition);
				path_end();
			}
			
		//change state to chase
		currentState = chaseEnum.chase;
		target = sensor;

		}
	}
}


if damaged == false {
	if currentState == chaseEnum.disabled then flashval = 0.1
	else flashval = 1.0;
} else {
	currentSpeed = 0;
	hspeed = 0;
}


//behavior for all states

