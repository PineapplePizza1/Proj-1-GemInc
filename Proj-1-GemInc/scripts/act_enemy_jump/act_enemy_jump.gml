
if !jumped and !place_meeting(x,y-(jumpHeight*2), obj_wall) {
	vspeed = -jumpHeight;
	jumped = true;
	jumpCounter = 0;
}

