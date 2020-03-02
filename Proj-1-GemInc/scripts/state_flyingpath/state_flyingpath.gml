///@description start path if not on it, continue if stop.

//if on current path, fix it

if path_index != flightPath {
	path_start(flightPath, moveSpeed, pathAct, false);
	//path_position = returnPosition; //return to where you left off.
}

