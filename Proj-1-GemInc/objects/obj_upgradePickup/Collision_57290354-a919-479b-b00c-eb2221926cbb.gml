/// @description Set Player's upgrade level.
var ability = upgrBranch; //check with player's create values.
var level = upgrLevel;

with (other)
{
	upgrade_Array[ability] = level;
}
audio_play_sound(snd_sound1,4,false)
instance_destroy();