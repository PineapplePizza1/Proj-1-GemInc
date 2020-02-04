/// @description Insert description here
// You can write your code in this editor

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
	
