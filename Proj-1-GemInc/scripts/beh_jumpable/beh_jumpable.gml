//step function to enable jumping
jumpCounter ++;
jumpCounter = clamp(jumpCounter, 0, jumpTimer);

if jumpCounter >= jumpTimer and instance_place(x, y+2, obj_wall)!= noone{
	
	jumped = false;
	

}