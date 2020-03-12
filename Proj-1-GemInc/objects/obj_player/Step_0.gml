/// @description Movement, Collisions, Gravity, and Shootin
// LC: Dillon 2/1/20


#region Direction Toggling
//direction toggle. Do not make Else statement
if keyboard_check(vk_right) then currFace = faceDir.right;
if keyboard_check(vk_left) then currFace = faceDir.left;

#endregion

//stuff you can't do while respawning
if currentHState != healthStates.respawn
{

#region Horizontal Movement
hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpeed;
	//subtracting just takes the difference, and since they return 1, just gives pos and neg movespeed

#endregion

#region Gravity and jumping
//Jump is difficult to make state-based, due to the overlapping of several different states.



//Jumping
if keyboard_check(vk_space) {
	
	//Initial Jump - check key pressed is too unreliable.
	if !(jumped){
		player_jump();// Jump script
		jumped = true;
		jumpCounter = 0;
		endHold = false;
		
		//STATE: set spriteState
		currentState = spriteStates.jumping;
		
		//set alarm initially, so that every jump for sure gets reset
		alarm[1] = room_speed * landTimer;
		
	} else{
		//Jump Acceleration/Hold Variable Jump
		if jumpCounter<(jumpHold*room_speed) and !endHold {
			vspeed += jumpAccel;
			
		}
	
	}
}
else if !endHold then endHold = true;





//falling
if vspeed >0 then { //falling
	jumped = true;
}

//setting acceleration time.
jumpCounter +=1; 
jumpCounter = clamp(jumpCounter, -1, jumpHold*room_speed + 10);

	

if place_meeting(x, y+2, obj_wall){
	gravity = 0;

	//STATE: grounded states spritesetting
	if keyboard_check(vk_left) or keyboard_check(vk_right) then currentState = spriteStates.moving
	else if currentState != spriteStates.shooting then currentState = spriteStates.standing;
	
}
else {
	gravity = gravVal;
	alarm[1] = room_speed * landTimer; //Makes sure the timer doesn't end until you land.
}


#endregion


#region Shooting
if upgrade_Array[3] >0 {
	if canShoot{
		if keyboard_check(ord("A"))
		{
			canShoot = false;
			alarm[0] = room_speed * shootTimer;
		
			//set shooting direction
			if currFace = faceDir.right then player_shoot(0)
			else player_shoot(180);
		
			//STATE:set to shooting
			currentState = spriteStates.shooting;
			
			//get out of stealth
			if currentHState == healthStates.stealthed then currentHState = healthStates.healthy ;
		
		}
	}
}
#endregion



#region MV state upgrades 

//Shoot Mode unlock
if upgrade_Array[3] == 2{
	if keyboard_check_pressed(ord("D")){
	shootModeHack = !shootModeHack;
}}

//stealth
if upgrade_Array[2] == 1{
	if stealthable {
		if keyboard_check(ord("S"))
		{
			
			if currentHState == healthStates.healthy {
				
				currentHState = healthStates.stealthed;
			
				stealthable = false;
				
				alarm[3] = room_speed * stealthDuration;
				
				//stealth cooldown
				
				alarm[6] = room_speed * (stealthCool + stealthDuration);
			
			}
			
		}
	}
}



#endregion

}else{
	
	gravity = 0;
	hspeed = 0;
	vspeed = 0;
	
}

if currentHState = healthStates.respawn then lose_condition();

#region Debug tools
/*

//debug keys
if keyboard_check(ord("1")){
	upgrade_Array[0] = 1;
	upgrade_Array[1]= 1;
}
if keyboard_check(ord("2")){
	upgrade_Array[0] = 2;
	upgrade_Array[1] = 2;
}
if keyboard_check(ord("3")){
	upgrade_Array[2] = 1;
}
if keyboard_check(ord("4")){
	upgrade_Array[3] = 2;
}
*/

#endregion


#region Camera Operations

currRoom = instance_position(x,y, obj_roomBox);
// Doesn't work yet, fix cameras first
if currRoom == noone {
	if currentHState != healthStates.respawn{
		damage_player(maxHP);
	}
}
#endregion


#region Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.
	//ALWAYS CHECK COLLISIONS LAST, after movement code.
#endregion