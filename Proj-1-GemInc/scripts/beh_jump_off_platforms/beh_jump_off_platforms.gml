//if off ledge, jump off platform
//NOTE implement on shooting enemy. should find some way to jump towards player. detect ledge? boss perhaps.

if !position_meeting(x+((sprite_width+2)/2*dir), y+(sprite_width+2)/2, obj_wall) and hspeed != 0 and vspeed ==0
then {
	act_enemy_jump();
}