//tracks player and checks to see if there are any walls in the way
//RETURN = a little unusual, but if can see, will return player, as a way of saying true. just a easier access.

if !util_player_exists() then return noone;
if obj_player.currentHState == healthStates.stealthed or obj_player.currentHState == healthStates.respawn or obj_player.currentHstate == healthStates.damaged then return noone;

var playa = instance_find(obj_player,0);

if playa !=noone
{
	if collision_line(x,y, playa.x, playa.y, obj_wall, false, true) == noone
	{
		return playa;	
	}	
	else return noone;
}