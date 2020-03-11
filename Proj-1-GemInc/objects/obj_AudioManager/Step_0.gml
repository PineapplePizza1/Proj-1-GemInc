/// @description Play the Music, Maestro

if cMusic != nMusic{
	cMusic = nMusic;
	audio_play_sound(cMusic, 3, true);
}