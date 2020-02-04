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
	

//Actions
sensor = beh_detect_player_vision();
if sensor != noone then target = sensor;

//start moving
if target != noone
{
	act_turnTo(target);
	
	if target.y < y {
		beh_jump_off_platforms();  //Forms a rudimentary climb 
		}
	beh_wall_jump();
	
}

//advance to wait if you don't sense, and not in waiting period, 310
if sensor == noone  and timeline_position>260 {
	currentState = chaseEnum.wait;	
}
//running
act_speedScale(2);
act_move();





//NEED some sort of action to check, if player is above, and there is a jumping point, then to jump.
//maybe random jumps too.

//State Change statements