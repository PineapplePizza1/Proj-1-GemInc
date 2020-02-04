///Script detailing chase chasing state. SM_basicChaseAI,
//essentially, follow player whenever visible. switch out to wait-state if no longer visible.




//set State Timeline
if timeline_index != basicChaseAI_tl or timeline_position <250 or timeline_position >431{
	timeline_position = 250;
}
//make sure it runs, even if default
	timeline_index = basicChaseAI_tl;
	timeline_running = true;
	timeline_loop = false;

	timeline_position = clamp(timeline_position, 250, 431); //give some extra leeway, but make sure you have reset/shift function included
	

//actions in step
sensor = beh_detect_player_vision();
if sensor != noone then target = sensor;

//start moving
if target != noone
{
	act_turnTo(target);
	
	if target.y < y {
		beh_jump_off_platforms();
		}
	beh_wall_jump();
	
}

//advance to wait if you don't
if sensor == noone and timeline_position>310 {
	currentState = chaseEnum.wait;	
}

act_speedScale(2);
act_move();





//NEED some sort of action to check, if player is above, and there is a jumping point, then to jump.
//maybe random jumps too.

//State Change statements