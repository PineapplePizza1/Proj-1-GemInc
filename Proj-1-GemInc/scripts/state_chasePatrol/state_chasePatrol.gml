///Script detailing chase patrol state. SM_basicChaseAI,

//behaviors
prevdir = sign(dir);
beh_stay_on_platforms();
beh_wall_turn();


//set State Timeline
if timeline_index != basicChaseAI_tl or timeline_position >241{
	timeline_position = 0;
}
//make sure it runs, even if default
	timeline_index = basicChaseAI_tl;
	timeline_running = true;
	timeline_loop = false;

	timeline_position = clamp(timeline_position, 0, 245); //give some extra leeway, but make sure you have reset function included
	
//actions in step
if prevdir != sign(dir) 
{
	//see if drection changed, so you don't get abrupt turnaround.
	//has amazing added benefit of setting the point of turn as the new start, so go full length on platform.
	timeline_position = 0;
}


act_walk();


//State Change statements
	//you can have state change statements here, or in the State Machine, whichever is more applicable!
	
if beh_detect_player_vision() then currentState = chaseEnum.chase;