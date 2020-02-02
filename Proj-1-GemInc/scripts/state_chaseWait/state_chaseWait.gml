//no behaviors this time

//set State Timeline
if timeline_index != basicChaseAI_tl or timeline_position <440 or timeline_position >521{
	timeline_position = 440;
}
//make sure it runs, even if default
	timeline_index = basicChaseAI_tl;
	timeline_running = true;
	timeline_loop = false;

	timeline_position = clamp(timeline_position, 440, 521); //give some extra leeway, but make sure you have reset/shift function included
	

//step functions
hspeed = 0;


//if you want to do a more sustained wait, like 1 sec wait, 2 second search, 
//best idea would be to do it as another state, which should hopefully be easy. timeline wait, that's it.