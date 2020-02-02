/// @description State Machine run
// You can write your code in this editor

// Inherit the parent event

platform_state_machine(currentState);


//AI if statements
	//if approaching edge
if instance_place(x+(2*sign(hspeed)), y+2, obj_wall)==noone
{
	show_debug_message(timeline_position);
	if hspeed <=0 {
			//timeline_position = 0; //move right moment
		}
		else
		{
			//timeline_position = 240; //move left moment
		}
	
}


event_inherited();
