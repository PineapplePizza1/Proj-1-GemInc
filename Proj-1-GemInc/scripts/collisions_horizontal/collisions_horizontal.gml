///Checks for collision in horizontal direction, and if collision is detected, moves object.x the exact amount up to its sprite_width, and stops movement.
//LC: Dillon 2/1/20

//NOTE: ALWAYS PUT COLLISION CODE AFTER MOVE CODE. needs to reset the speed to 0 before the game steps, so make sure it's at the end.

var coll = instance_place(x+hspeed, y, obj_wall);
	//checks for spot of x plus current hspeed, aka objects next location.



if (coll != noone){
	var x_dis = coll.x - x;
	var truewidth = sprite_width;
		if image_xscale <0 then truewidth = -truewidth;
	//combine the distance from origin to sprite edge for both objects
	var combinedWidth = (truewidth/2 + coll.sprite_width/2); //this way, you can use any two object of any size/scale
		//Move x directly up to distance minus the sprite's width
		//based on sign
		
	if(x_dis>=0){
		x += x_dis - combinedWidth; //player left of object, move right (+)
			
	}
	else{
		x += x_dis + combinedWidth; //player right of object, move left (-)
	}
	
	
	hspeed =0
		//stop movement
}
		
//Debug Commands
//show_debug_message(string(x) + "," + string(coll.x) + "," + string(x_dis) + "," + string(combinedWidth) + "," + string(x_dis-combinedWidth));