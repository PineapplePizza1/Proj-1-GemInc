//Initialize SM_Flying AI
/* chaseEnum {
	patrol,
	chase,
	wait,
	idle,
	disabled,
	shoot
} */


//disable gravity


//Position and path pos to return to
pathX = x;
pathY = y;
returnPosition = 0;

if path_get_closed(flightPath) then pathAct = path_action_continue
	else pathAct = path_action_reverse;

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