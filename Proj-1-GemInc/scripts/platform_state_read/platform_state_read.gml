///read the enemy's state and provide actions
//arg0 = state in a string

switch (argument0)
{
	case "move left":
		hspeed -= moveSpeed;
		break;
	case "move right":
		hspeed += moveSpeed;
		break;
	case "jump":
		break;
	case "shoot":
		break;
	default:
		hspeed = 0;
	
}