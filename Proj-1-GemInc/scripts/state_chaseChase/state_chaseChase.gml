///Script detailing chase chasing state. SM_basicChaseAI,
//incomplete, have stuff to add



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
var meal = instance_find(obj_player, 0);
act_turnTo(meal);
act_run(2);



//behaviors
beh_jump_off_platforms();
beh_wall_jump();
//don't forget about jump states :(


//NEED some sort of action to check, if player is above, and there is a jumping point, then to jump.
//maybe random jumps too.

//State Change statements