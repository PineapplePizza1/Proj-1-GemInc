/// @description Movement, Collisions, Gravity, and Shootin
// LC: Dillon 2/1/20


#region Direction Toggling
//direction toggle. Do not make Else statement
if keyboard_check(vk_right) then currFace = faceDir.right;
if keyboard_check(vk_left) then currFace = faceDir.left;

#endregion


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
		
		//STATE: set spriteState
		currentState = spriteStates.jumping;
		
	}
	
	//Jump Acceleration/Hold Variable Jump
	if jumpCounter<(jumpHold*room_speed) and !endHold then vspeed += jumpAccel;
}

//ending hold
if keyboard_check_released(vk_up) then endHold = true;
if vspeed >0 then {
	endHold = true;
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
		
	}
}
#endregion

#region Stealth Activation
if mv_stealthUpgrade ==1{
	if keyboard_check(ord("S"))
	{
		if currentHState == healthStates.healthy then currentHState = healthStates.stealthed;
		alarm[3] = room_speed * 2;
	}
}
#endregion



#region MV state upgrades 

//debug keys
if keyboard_check(ord("1")){
	mv_shotUpgrade = 1;
	mv_jumpUpgrade = 1;
}
if keyboard_check(ord("2")){
	mv_shotUpgrade = 2;
	mv_jumpUpgrade = 2;
}
if keyboard_check(ord("3")){
	mv_stealthUpgrade = 1;
}
#endregion


#region Updating Damage
//Add a damage self script. Should check current hp, and set death states accordingly.
//player should be the only one in need of the damage self script. player bullets should be able to set the 
//enemy's states accordingly. will need to add damaging state, that lets players chase. 
//add more enemy shader values to the thing.
#endregion



#region Camera Operations
currRoom = instance_position(x,y, obj_roomBox);
// Doesn't work yet, fix cameras first
if currRoom == noone {
	lose_condition();
	instance_destroy();
}
#endregion


#region Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.
	//ALWAYS CHECK COLLISIONS LAST, after movement code.
#endregion