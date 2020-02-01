/// @description Gravity, Movement, Collisions,
// LC: Dillon 2/1/20


//Gravity
	//needs to be acceleration
	//gravity in example set by knowing whether or not you're touching ground.
	//if you are, and you jump, set flat vspeed, then set a deceleration(gravity)
	//if not, and there isn't already gravity, then set gravity to ??? maybe same amount? seems like .25 is a popular setting.
//vspeed += .2;

//Movement
vspeed = (keyboard_check(vk_down) - keyboard_check(vk_up)) * moveSpeed;
hspeed = (keyboard_check(vk_right) - keyboard_check(vk_left)) * moveSpeed;
	//subtracting just takes the difference, and since they return 1, just gives pos and neg movespeed
	
//Collisions
if vspeed !=0 then collisions_vertical();
if hspeed !=0 then collisions_horizontal();
	//only check collisions when moving.