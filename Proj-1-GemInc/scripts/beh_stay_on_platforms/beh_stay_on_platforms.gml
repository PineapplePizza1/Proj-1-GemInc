//value of sprite_width/2 is exact value of the sprite/collision mask.
//for some reason now enemies need moveSpeed instead of hspeed as a value
if instance_place(x+((sprite_width)/2*currentSpeed*dir), y+2, obj_wall)==noone and vspeed == 0
{
	act_turn();
}