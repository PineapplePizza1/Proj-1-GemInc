/// @description Insert description here
// You can write your code in this editor

//Inherit Parent Event
event_inherited();
	//MAKE SURE IT IS BEFORE LOCAL INITIALIZATION

//Initialize SM_basicChaseAI
enum chaseEnum {
	patrol,
	chase,
	wait,
	idle
}

//whoops, jumped
//special var
jumped = true;
jumpCounter = 0;
jumpTimer = 60;

//set current state
currentState = chaseEnum.patrol;

