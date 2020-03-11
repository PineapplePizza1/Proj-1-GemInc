/// @description Play the Music, Maestro

if cMusic != nMusic{
	nMusic = cMusic;
	audio_play_sound(nMusic, 3, true);
}