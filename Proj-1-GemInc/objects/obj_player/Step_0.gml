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
        var inst = instance_create_layer(x, y, layer, obj_bullet);
		//set shooting direction
		if shootRight then inst.rightFace = true;
		else inst.rightFace = false;
	}
}
