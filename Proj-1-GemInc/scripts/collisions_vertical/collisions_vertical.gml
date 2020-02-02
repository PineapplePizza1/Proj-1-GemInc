///Checks for collision in vertical direction, and if collision is detected, moves object.y the exact amount up to its sprite_width, and stops movement.
//LC: Dillon 2/1/20

//***NOTE: Collision code only works with a boxlike sprite. if you have a wonky sprite, try using a box with dimensions as the Collision Mask.
//NOTE: ALWAYS PUT COLLISION CODE AFTER MOVE CODE. needs to reset the speed to 0 before the game steps, so make sure it's at the end.
//make sure to remove gravity on each object with this code

var coll = instance_place(x, y+vspeed, obj_wall);
	//checks for spot of y plus current vspeed, aka objects next location.

if (coll != noone){
	var y_dis = coll.y - y;
		
	//combine the distance from origin to sprite edge for both objects
	var combinedHeight = (sprite_height + coll.sprite_height)/2; //this way, you can use any two object of any size/scale
	
		//Move y directly up to distance minus the sprite's height
		//based on sign

		
	if(y_dis>=0){
		y += y_dis - combinedHeight; //player above object, move up (-)
	}
	else{
		y += y_dis + combinedHeight; //player below object, move down (+)
	}
	
	
	vspeed =0
		//stop movement
} 

		
//Debug commands
//show_debug_message(string(y) + "," + string(coll.y) + "," + string(y_dis) + "," + string(combinedHeight) + "," + string(y_dis-combinedHeight));