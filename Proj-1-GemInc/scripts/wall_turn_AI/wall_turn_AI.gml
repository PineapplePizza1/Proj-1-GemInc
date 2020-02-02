/// A wall turn AI, like collisions but will set speed different.
//arg0 = move right position
//arg1 = move left position

if instance_place(x+hspeed, y, obj_wall) != noone {
	
	//reverse directions from platform.
	if hspeed <0 {
			timeline_position = argument0; //move right moment
	}
	else if hspeed > 0
	{
		timeline_position = argument1; //move left moment
		
	}
	
}
