//practice state machine, works with platformer enemies
//arg0 = current state

switch (argument0){
	case "walk":
		act_walk();
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
