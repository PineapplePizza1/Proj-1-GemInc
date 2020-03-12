///damages player, and sets their state to the prerequisite levels.
//arg 0 = damage values
with (obj_player){
	if currentHState == healthStates.healthy or currentHState = healthStates.stealthed{
		hp -= argument0;
		currentHState = healthStates.damaged;
		alarm[2] = room_speed*invulTimer;
		audio_play_sound(snd_sound2,4,false)
	}
	
	if hp <= 0 and currentHState != healthStates.respawn{
		hp = 0;
		currentHState = healthStates.respawn;
		alarm[5] = room_speed * respawnTimer;
	}
	
}