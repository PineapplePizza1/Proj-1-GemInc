///Only damage other enemies. don't know how to prevent null pointers, so?
//argument0 = the other with an hp Stat
//argument1  = the damage you want to deal
with (argument0) {
	if damaged = false{
		hp -= argument1;
	}
	if hp <=0 then instance_destroy(argument0);
}