// may add an argument to see how far in advance want to jump in front of wall.

if instance_place(x+(sprite_width)*(hspeed), y, obj_wall)!=noone and hspeed != 0
then currentState = "jump";