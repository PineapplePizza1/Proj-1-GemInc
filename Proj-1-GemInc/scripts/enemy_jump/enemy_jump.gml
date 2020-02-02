existSpeed = hspeed;
hspeed = existSpeed;

if !jumped {
	vspeed = -jumpHeight;
	jumped = true;
	jumpCounter = 0;
}
show_debug_message(jumpCounter)

if jumpCounter >= jumpTimer and instance_place(x, y+2, obj_wall)!= noone{
	
	jumped = false;
	
	if hspeed>0
	{
		currentState = "move right";
	}
	else
	{
		currentState = "move left";
	}

}

//jumpcounter should increase regardless of state, but clamp.