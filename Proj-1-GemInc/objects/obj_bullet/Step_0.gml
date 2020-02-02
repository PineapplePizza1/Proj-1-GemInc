/// @description Reflect Sprite

//alter sprite and direction based on information from firer
if direction >90 and direction <270 {
	image_xscale = -1;
}
else if direction <=90 or direction >= 270
{
	image_xscale = 1
}

//easy to add angles with more cases
