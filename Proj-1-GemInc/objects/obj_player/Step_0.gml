/// @description Movement, Collisions, Gravity, and Shootin
// LC: Dillon 2/1/20



//Movement
hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpeed;
	//subtracting just takes the difference, and since they return 1, just gives pos and neg movespeed
	
//Gravity and jumping

	
	//Jump Acceleration/Hold Variable Jump
if keyboard_check(vk_up) and jumpCounter < (jumpHold*room_speed){
	//Initial Jump - check key pressed is too unreliable.
	if !(jumped){
		player_jump();// Jump script
		jumped = true;
		alarm[1] = room_speed * jumpTimer; //Makes it so you can't constantly jump.
	}
	if !endHold then vspeed += jumpAccel;
}

//acceleration timer
if jumped then jumpCounter +=1; 
jumpCounter = clamp(jumpCounter, -1, jumpHold*room_speed + 10);

if keyboard_check_released(vk_up) then endHold = true;

//reset all variables on touchdown
if place_meeting(x, y+1, obj_wall){ //apparently, need at least +2 to activate
	gravity = 0;
	jumpCounter = 0;

}
else {
	gravity = gravVal;
}




//Shooting
//direction toggle. Do not make Else statement
if keyboard_check(vk_right) then shootRight = true;
if keyboard_check(vk_left) then shootRight = false;

if canShoot{
	if keyboard_check(vk_space)
    {
        canShoot = false;
        alarm[0] = room_speed * shootTimer;
		
		//set shooting direction
		if shootRight then player_shoot(0)
		else player_shoot(180);

		
	}
}

//fine tune the details of different firing modes later, as long as abilities array is up, it'll be easy to change certain elements.


//MV state upgrades debug

if keyboard_check(ord("1")){
	mv_shotUpgrade = 1;
	mv_jumpUpgrade = 1;
}
if keyboard_check(ord("2")){
	mv_shotUpgrade = 2;
	mv_jumpUpgrade = 2;
}



//Camera Operations
currRoom = instance_position(x,y, obj_roomBox);
// Doesn't work yet, fix cameras first
if currRoom == noone {
	lose_condition();
	instance_destroy();
}



//Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.
	//ALWAYS CHECK COLLISIONS LAST, after movement code.