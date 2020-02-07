/// @description Insert description here
// You can write your code in this editor


if instance_exists(followObj) {
	var nRoom = followObj.currRoom;
	if nRoom != noone then cRoom = nRoom;
	
	if cRoom != noone{
		//basic vers
		
		
		currX = camera_get_view_x(defCam);
		currY = camera_get_view_y(defCam);
		
		var spradiusX = followObj.sprite_width/2;
		var spradiusY = followObj.sprite_height/2;
	
		if followObj.x < (currX+followBorder) then currX -= followObj.moveSpeed;
		if followObj.x > currX+camera_get_view_width(defCam) - followBorder{
			currX += followObj.moveSpeed;
		}

		if followObj.y < (currY+followBorder) then currY -= 5;
		if followObj.y > (currY+camera_get_view_height(defCam) - followBorder ){
			currY += 5;
		}
		
		//camera_set_view_pos(defCam, cRoom.x-(cRoom.RB_height/2), cRoom.y-(cRoom.RB_height/2));
		currX = clamp(currX, cRoom.x, cRoom.x+(cRoom.RB_width - camera_get_view_width(defCam)));
		currY = clamp(currY, cRoom.y, cRoom.y+(cRoom.RB_height - camera_get_view_height(defCam)));
		
		show_debug_message("At: " + string(currX) + ", " + string(currY));
		
		
		camera_set_view_pos(defCam, currX, currY);
		
		
		
	}

}



//2 parts to the metroidvania system
//preset room objects. give the X and Y of room/screen, and show doors/transitions.
	//have an array of door objects, that connect to a room. Should hold a room, and transition to it.
	//and should be based on room object position.
//Camera object that can follow the player, with adjustable boundary, (keeping player below 50% for platforming)
//and takes in those X and Y objects as total limits.


//camera pan if player moves past certain moment of screen resolution.
//camera can't pan anymore if greater than limit, [CLAMP]
	//moving up and down is fine, bc the camera should only get wonky if they fall down, which they'll need the camera there if they do.
	//just make it so player can be much lower than they can be higher.
	
