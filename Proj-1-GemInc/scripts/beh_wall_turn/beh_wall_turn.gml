/// A wall turn behavior. Similar to horizontal collisions, but just turns.

//use placemeeting, since you don't need the actual instance
if place_meeting(x+(currentSpeed*dir), y, obj_wall) {
	act_turn();
	//for some reason, started needing to use movespeed, for enemy tools
}
