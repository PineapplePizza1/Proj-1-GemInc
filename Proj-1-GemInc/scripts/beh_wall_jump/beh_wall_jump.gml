// may add an argument to see how far in advance want to jump in front of wall.

if instance_place(x+(sprite_width*hspeed*dir), y, obj_wall)!=noone and hspeed != 0
then act_enemy_jump();