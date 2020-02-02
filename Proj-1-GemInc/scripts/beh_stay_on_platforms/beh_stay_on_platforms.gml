//value of sprite_width/2 is exact value of the sprite/collision mask.
//arg0 =  timeline moment of move right
//arg1 = timeline moment of move left
if instance_place(x+(sprite_width/2)*(hspeed*dir), y+2, obj_wall)==noone and vspeed == 0
{
	act_turn();
}