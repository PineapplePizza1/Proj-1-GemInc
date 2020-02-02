//state machine to read states and enact actions with platformers 
//arg- = state, as a string

switch (argument0){
	case "walk":
		hspeed = moveSpeed * dir;
		break;
	case "jump":
		act_enemy_jump();
		break;
	case "shoot":
		//pause and shoot, fast. don't forget bullet speed.
		break;
	case "wait":
		//standard, just nothin
		hspeed = 0;
		break;
	default:
		show_debug_message("Error: Out of State Machine");
		hspeed = 0;
		break;
}
