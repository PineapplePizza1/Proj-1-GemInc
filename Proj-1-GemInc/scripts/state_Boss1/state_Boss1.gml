///@description State for phase 3, float and shoot
//use main timeline.

//set State Timeline
if timeline_index != BossTimeline1 or timeline_position > 180{
	timeline_position = 0; //this resets and lets the enemy fire again if the state is reactivated once timeline over.
}

//make sure it runs, even if default
	timeline_index = firingCycle1
	timeline_running = true;
	timeline_loop = true;
	//Setting timeline speed.
	timeline_speed = 1;//a boss has to be tougher, right?'
	
	
//Floating and speed directions
direction = randDirection;


//turn
if place_meeting(x+(hspeed), y, obj_wall) {
	moveSpeed = 0;
}
speed = moveSpeed;

