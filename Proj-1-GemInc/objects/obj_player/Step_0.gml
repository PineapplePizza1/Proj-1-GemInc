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
		vspeed = jumpHeight;
		jumped = true;
		alarm[1] = room_speed * jumpTimer; //Makes it so you can't constantly jump.
	}
	vspeed += jumpAccel;
}

//reset all variables on touchdown
if instance_place(x, y+2, obj_wall)!=noone{ //apparently, need at least +2 to activate.
	jumpCounter = 0;
	gravity = 0;
}
else {
	jumpCounter +=1; //increase timer in air, not just with press.
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
		if shootRight then shoot_object(obj_bullet, 0, fireSpeed)
		else shoot_object(obj_bullet,180, fireSpeed)

		
	}
}

//METROIDVANIA different abilities structure
if abilities[0] then fireSpeed = bulletSpeed;
if abilities[1] then fireSpeed = bulletSpeed + 10;

//current test togggle
if keyboard_check(ord(1)){
	abilities[0] = true;
	abilities[1] = false;
}
if keyboard_check(ord(2)){
	abilities[0] = false;
	abilities[1] = true;
}
//fine tune the details of different firing modes later, as long as abilities array is up, it'll be easy to change certain elements.


//Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.
	//ALWAYS CHECK COLLISIONS LAST, after movement code.