//Initialize SM_basicChaseAI
enum chaseEnum {
	patrol,
	chase,
	wait,
	idle,
	shoot
}

//whoops, jumped
//special var
jumped = true;
jumpCounter = 0;
jumpTimer = 60;

//set current state
currentState = chaseEnum.patrol;