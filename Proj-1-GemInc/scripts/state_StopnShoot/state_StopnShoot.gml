///script detailing the stop and shoot routine


//set State Timeline
if timeline_index != firingCycle1 or timeline_position >90{
	timeline_position = 0; //this resets and lets the enemy fire again if the state is reactivated once timeline over.
}

//make sure it runs, even if default
	timeline_index = firingCycle1
	timeline_running = true;
	timeline_loop = false;

//FIRINGCYCLE: firing cycle should just set timeline of stop-->shoot-->wait, and then state transition into chase or patrol.
//**This state always transitions out of shooting first, before reactivating.
	
	
//Actions
hspeed = 0; //stop movement in this mode

//State Change statements
	//you can have state change statements here, or in the State Machine, whichever is more applicable!
	