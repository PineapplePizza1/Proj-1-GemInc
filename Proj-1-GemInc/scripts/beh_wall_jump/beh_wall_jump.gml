// may add an argument to see how far in advance want to jump in front of wall.


if instance_place(x+(sprite_width/2*moveSpeed*dir)+1, y-(sprite_width/2), obj_wall)!=noone and vspeed == 0{
	act_enemy_jump();
}