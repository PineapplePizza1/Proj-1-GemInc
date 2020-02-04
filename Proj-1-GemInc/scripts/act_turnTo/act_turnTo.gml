//changes horizontal direction towards an object. 
//just changes dir.
//arg0 the object you want to track.
var next = argument0;

if next != noone {
	if next.x-x >5 {
		dir = 1;
	}
	else if next.x-x <-5
	{
		dir = -1
	}
	else
	{
		dir = 0;	
	}
	
}