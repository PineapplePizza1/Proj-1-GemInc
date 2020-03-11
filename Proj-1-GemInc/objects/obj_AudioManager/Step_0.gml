/// @description Play the Music, Maestro

if cMusic != nMusic{
	audio_stop_sound(cMusic);
	cMusic = nMusic;
	audio_play_sound(cMusic, 3, true);
}