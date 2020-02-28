///Only damage other enemies. don't know how to prevent null pointers, so?
//argument0 = the other with an hp Stat
//argument1  = the damage you want to deal

if argument0.damaged != true
{
	
argument0.hp -= argument1;
if argument0.hp <=0 then instance_destroy(argument0);

//set damaged value
argument0.damaged = true;

}