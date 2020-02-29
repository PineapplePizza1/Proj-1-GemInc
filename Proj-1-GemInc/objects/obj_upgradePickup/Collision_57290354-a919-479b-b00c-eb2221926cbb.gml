/// @description Set Player's upgrade level.
var ability = upgrBranch; //check with player's create values.
var level = upgrLevel;

with (other)
{
	upgrade_Array[ability] = level;
}

instance_destroy();