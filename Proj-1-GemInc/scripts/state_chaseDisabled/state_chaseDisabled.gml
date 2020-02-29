//this is for disabling state damage.

//Disable timeline 
	timeline_index = basicChaseAI_tl;
	timeline_running = false;
	timeline_loop = false;
	timeline_position = 521;
	

disableCounter +=1;

if disableCounter >= disableTimer
{
	disableCounter = 0;
	currentState = chaseEnum.patrol;
}