/// @description Insert description here
// You can write your code in this editor

var defCam = view_get_camera(0);

if instance_exists(followObj) {
	var cRoom = followObj.currRoom;
	if cRoom != noone{
		//basic vers
		
		camera_set_view_pos(defCam, cRoom.x -(cRoom.RB_width/2), cRoom.y-(cRoom.RB_height/2));
		camera_set_view_size(defCam, cRoom.RB_width, cRoom.RB_height);
		
		
		/*
		//camera following code
		//need to fix and get accurate clamps.
		
		var posx = followObj.x;
		var posy = followObj.y;
		if followObj.x < (x+followBorder) then posx = followObj.x - followBorder; 
		if followObj.x > x+camera_get_view_width(defCam) - followBorder{
			posx = (followObj.x + followBorder) - camera_get_view_width(defCam);
		}
		if followObj.y < (y+followBorder) then posy = followObj.y - followBorder; 
		if followObj.y > y+camera_get_view_height(defCam) - followBorder{
			posy = (followObj.y + followBorder) - camera_get_view_height(defCam);
		}
			
		
		//limit camera inside box
		var xmin = cRoom.x - (cRoom.RB_width/2);
		var xmax = cRoom.x + (cRoom.RB_width/2) - camera_get_view_width(defCam);
		posx = clamp(x, xmin, xmax);
		
		var ymin = cRoom.y - (cRoom.RB_height/2);
		var ymax = cRoom.y + (cRoom.RB_height/2) - camera_get_view_height(defCam);
		posy = clamp(y, ymin, ymax);
		
		if (cRoom.RB_width - camera_get_view_width(defCam) >= 0) then x = cRoom.x;
		if (cRoom.RB_height - camera_get_view_height(defCam)) >= 0 then y = cRoom.y;
		
			//if room is biger than cam, just set to room x and y
			//camera origin is top left
			
		camera_set_view_pos(defCam, posx, posy);
		*/
		
		
		
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
	
