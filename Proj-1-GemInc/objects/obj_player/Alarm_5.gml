/// @description Respawn Timer
//
room_restart();
x = respawnX;
y = respawnY;
hp = maxHP;

//invuln on respawn
currentHState = healthStates.damaged;
		alarm[2] = room_speed*invulTimer;
