/// @description heal player up to max health
var healing = hVal;

with (other)
{
	hp += healing;
	if hp > maxHP then hp = maxHP;
}

instance_destroy();
