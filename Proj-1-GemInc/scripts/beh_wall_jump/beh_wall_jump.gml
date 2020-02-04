// may add an argument to see how far in advance want to jump in front of wall.


if place_meeting(x+(currentSpeed*dir), y, obj_wall) and vspeed == 0{
	act_enemy_jump();
}
