var existSpeed = hspeed;
hspeed = existSpeed;

if !jumped {
	vspeed = -jumpHeight;
	jumped = true;
	jumpCounter = 0;
}

if jumpCounter >= jumpTimer and instance_place(x, y+2, obj_wall)!= noone{
	
	jumped = false;
	
	currentState = "walk";

}

//jumpcounter should increase regardless of state, but clamp.