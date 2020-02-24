//Check line, and if player crosses horizontal line, then is spotted.
//if you want to check for walls, just combine with detect player vision.

//check player exists
if !util_player_exists() then exit;

var coll = collision_line(x,y, x+(5000*dir), y, obj_player, false, true);
if  coll != noone
{
	return coll;
}
else return noone;  //be sure to return noone