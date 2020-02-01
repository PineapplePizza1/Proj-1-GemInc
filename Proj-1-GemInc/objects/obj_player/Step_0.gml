/// @description Movement, Collisions, Gravity, and Shootin
// LC: Dillon 2/1/20



//Movement
hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpeed;
	//subtracting just takes the difference, and since they return 1, just gives pos and neg movespeed
	
//Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.
	
//Gravity and jumping

	
	//Jump Acceleration/Hold Variable Jump
if keyboard_check(vk_up) and jumpCounter < (jumpTimer*room_speed){
	//Initial Jump - check key pressed is too unreliable.
	if !(jumped){
		vspeed = jumpHeight;
		jumped = true;
	}
	vspeed += jumpAccel;
}

//reset all variables on touchdown
if instance_place(x, y+1, obj_wall){
	jumpCounter = 0;
	vspeed = 0;
	jumped = false;
}
else jumpCounter +=1; //increase timer in air, not just with press.



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
