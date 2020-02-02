//state machine to read states and enact actions with platformers 
//arg- = state, as a string

switch (argument0){
	case "move left":
		hspeed = -moveSpeed;
		break;
	case "move right":
		hspeed = moveSpeed;
		break;
	case "jump":
		enemy_jump();
		break;
	case "shoot":
		//pause and shoot, fast. don't forget bullet speed.
		break;
	default:
		break;
}
