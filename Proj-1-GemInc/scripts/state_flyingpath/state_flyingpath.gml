///@description start path if not on it, continue if stop.

//if on current path, fix it

if path_index != flightPath {
	path_start(flightPath, moveSpeed, pathAct, false);
	//path_position = returnPosition; //return to where you left off.
}

if place_meeting(x+hspeed, y+vspeed, obj_wall) {
	//if bump into wall, just go back to the beginning.
	path_end();
	currentState = chaseEnum.wait;
}
