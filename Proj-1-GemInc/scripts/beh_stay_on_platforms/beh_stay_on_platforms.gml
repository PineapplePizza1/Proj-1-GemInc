///Use Position meeting to find an exact spot on the corner of the sprite
if !position_meeting(x+((sprite_width+2)/2*dir), y+(sprite_height+2)/2, obj_wall)and vspeed == 0
{
	act_turn();
}