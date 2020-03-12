///@description Keepshooting
//Version of stopnshoot state that lets boss shoot whenever, instead of stopping. and he can jump.

//set State Timeline
if timeline_index != firingCycle1 or timeline_position >90{
	timeline_position = 0; //this resets and lets the enemy fire again if the state is reactivated once timeline over.
}

//make sure it runs, even if default
	timeline_index = firingCycle1
	timeline_running = true;
	timeline_loop = false;
	//Setting timeline speed.
	timeline_speed = 2;//a boss has to be tougher, right?
	
	
//Actions

//State Change statements