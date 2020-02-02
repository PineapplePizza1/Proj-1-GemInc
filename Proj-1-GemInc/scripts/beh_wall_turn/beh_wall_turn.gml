/// A wall turn AI, like collisions but will set speed different.
//arg0 = move right position
//arg1 = move left position

if instance_place(x+(moveSpeed*dir), y, obj_wall) != noone {
	act_turn();
	//for some reason, started needing to use movespeed, for enemy tools
}
