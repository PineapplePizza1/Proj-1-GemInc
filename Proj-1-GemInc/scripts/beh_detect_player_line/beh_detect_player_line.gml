//Check line, and if spot player and not walls, activate.
//not tested yet

var coll = collision_line(x,y, x+(5000*dir), y, obj_player, false, true);
if  coll != noone
{
	return coll;	
}