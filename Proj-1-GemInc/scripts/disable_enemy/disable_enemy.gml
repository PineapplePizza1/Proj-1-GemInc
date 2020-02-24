//damage enemy script, but it disables enemies instead of damaging them
//arg 0 = the enemy getting disabled.
//arg 1 = disable time, in seconds
argument0.currentState = chaseEnum.disabled;
argument0.disableTimer = room_speed * argument1;