//Initialize SM_basicChaseAI
enum chaseEnum {
	patrol,
	chase,
	wait,
	idle,
	disabled,
	shoot
}

//whoops, jumped
//special var
jumped = true;
jumpCounter = 0;
jumpTimer = 60;

//chase you
sensor = noone;
target = noone;

//disable damage
disableTimer = 300;
disableCounter = 0;

//currentspeed, instead of movespeed for running
//and makes it so wall detection goes with scaled speed, and etc.
currentSpeed = moveSpeed;

//set current state
currentState = chaseEnum.patrol;