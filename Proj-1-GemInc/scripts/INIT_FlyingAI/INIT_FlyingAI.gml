//Initialize SM_Flying AI
/* chaseEnum {
	patrol,
	chase,
	wait,
	idle,
	disabled,
	shoot
} */


//disable grav

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