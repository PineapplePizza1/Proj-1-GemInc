//runs state machines based off phase
var iGuess = argument0;




switch(currentPhase) {
	
	case bossPhases.Chase:
	
	
		state_Boss3();
		
		break;
		
	case bossPhases.PathPatrol:
	

		
		SM_FlyingAI(iGuess);
		
		break;
		
	case bossPhases.Firing:
	
		state_Boss1();
		
		break;
		
	case bossPhases.Idle:
	
		gravVal = startGrav;
		
		if beh_detect_player_vision() != noone then phasePosition = 0;
		
		break;
		
	default:
		show_debug_message("ERROR: out of machine, Boss");
		break;
		
		
}

//set gravity according to phases
if currentPhase == bossPhases.PathPatrol then gravVal = 0 else if currentPhase != bossPhases.Firing then gravVal = startGrav;
//set speed to slower on firing
if currentPhase == bossPhases.Firing then moveSpeed = 2 else moveSpeed = startSpeed;
//halt path if not on path patrol
if currentPhase != bossPhases.PathPatrol then path_end();




#region Phase setting "Timeline"

//increment and clamp
if phasePosition !=-1 then phasePosition ++;


//setting phase
if phasePosition == -1{ 
	currentPhase = bossPhases.Idle;
}
else if phasePosition <= chasePhasePos { 
	
	if timeline_index != basicChaseAI_tl then timeline_index = basicChaseAI_tl;
	currentPhase = bossPhases.Chase;
	
	}
else if phasePosition <= flightPhasePos {
	
	if phasePosition == flightPhasePos then currentState = chaseEnum.wait;
	currentPhase = bossPhases.PathPatrol;
}
else if phasePosition <= gunnerPhasePos{
	
	if timeline_index != BossTimeline1 then timeline_index = BossTimeline1;
	
	//DEBUG
	show_debug_message("POG");
	
	currentPhase = bossPhases.Firing;
}
else if phasePosition >= totalPhaseTimeline {
	//DEBUG
	show_debug_message("POGGER");
	phasePosition = 0;
}
else {
	show_debug_message("ERROR: out of boss phase timeline");
	phasePosition = 0;
}

phasePosition = clamp(phasePosition, -1, totalPhaseTimeline +5);



#endregion
