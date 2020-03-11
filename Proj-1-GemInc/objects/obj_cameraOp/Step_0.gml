/// @description Insert description here
// You can write your code in this editor



if instance_exists(followObj) {
	
	var nRoom = followObj.currRoom;
	
	
	if nRoom != noone{
		
		if cRoom != noone{
					
			currX = camera_get_view_x(defCam);
			currY = camera_get_view_y(defCam);
		
			
			if cRoom != nRoom{
				#region new room
				cRoom = nRoom;
				
				//x and y vars
				var xJump = currX;
				var yJump = currY;
				
				//Directional transition jumps
				if followObj.x < currX then xJump  = (currX - camera_get_view_width(defCam))
				else if followObj.x > currX+camera_get_view_width(defCam) then xJump = (currX + camera_get_view_width(defCam));
				
				if followObj.y < currY then yJump  = currY - camera_get_view_height(defCam)
				else if followObj.y > currY+camera_get_view_height(defCam) then yJump = currY + camera_get_view_height(defCam) ;
				
				
				//Adjust the position if you didn't jump.
				
				if followObj.x < (xJump + borderLeft) then xJump = xJump - (xJump+borderLeft-followObj.x);
				if followObj.x > xJump+(camera_get_view_width(defCam)-borderRight) then xJump = xJump + (followObj.x - ((xJump + camera_get_view_width(defCam)) - borderRight));
				
				if followObj.y < (yJump + borderUp) then yJump = yJump - (yJump+borderUp-followObj.y);
				if followObj.y > yJump+ (camera_get_view_height(defCam)-borderDown) then yJump = yJump + (followObj.y - ((yJump +camera_get_view_height(defCam)) - borderDown))				
				
				
				//clamp the jumps too.
				xJump = clamp(xJump, nRoom.x, nRoom.x+(nRoom.RB_width - camera_get_view_width(defCam)));
				yJump = clamp(yJump, nRoom.y, nRoom.y+(nRoom.RB_height - camera_get_view_height(defCam)));
				
				camera_set_view_pos(defCam, xJump, yJump);
				
				show_debug_message(yJump);
				
				#endregion
				
			}else{
			
			#region Camera Following
			
		
			if followObj.x < (currX+borderLeft) then currX -= followObj.moveSpeed;
			if followObj.x > currX+camera_get_view_width(defCam) - borderRight{
				currX += followObj.moveSpeed;
			}
		
			var fallspeed = followObj.vspeed * sign(followObj.vspeed);
			if fallspeed == 0 then fallspeed = followObj.moveSpeed;
			if followObj.y < (currY+borderUp) then currY -= fallspeed;
			if followObj.y > (currY+camera_get_view_height(defCam) - borderDown){
				currY += fallspeed;
			}
			
			
			//camera_set_view_pos(defCam, cRoom.x-(cRoom.RB_height/2), cRoom.y-(cRoom.RB_height/2));
			currX = clamp(currX, cRoom.x, cRoom.x+(cRoom.RB_width - camera_get_view_width(defCam)));
			currY = clamp(currY, cRoom.y, cRoom.y+(cRoom.RB_height - camera_get_view_height(defCam)));
		
		
			camera_set_view_pos(defCam, currX, currY);
		
			#endregion
			}
		
		} else cRoom = nRoom;
		
		
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
	
