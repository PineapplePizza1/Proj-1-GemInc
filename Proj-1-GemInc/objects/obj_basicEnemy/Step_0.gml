/// @description Collisions
// You can write your code in this editor

//Don't apply gravity if grounded. Makes it smoother
grounded_gravity();
	//make sure move code applies b4 collisions. this is solution in gravity case.

//Wall collisions
if vspeed != 0 then collisions_vertical();
if hspeed != 0 then collisions_horizontal();