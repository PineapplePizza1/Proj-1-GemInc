//if off ledge, jump off platform
//NOTE implement on shooting enemy. should find some way to jump towards player. detect ledge? boss perhaps.

if instance_place(x+(sprite_width/2)*(currentSpeed*dir), y+2, obj_wall)==noone and hspeed != 0 and vspeed ==0
then {
	act_enemy_jump();
	show_debug_message("Spaghetti");
}