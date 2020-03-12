///Only damage other enemies. don't know how to prevent null pointers, so?
//argument0 = the other with an hp Stat
//argument1  = the damage you want to deal
with (argument0) {
		hp -= argument1;
	if hp <=0 {
		instance_destroy(argument0);
		audio_play_sound(snd_sound6,4,false)
		}
}