if instance_place(x, y+2, obj_wall)!= noone then gravity = 0
else gravity = gravVal;

if currentState == chaseEnum.disabled then gravity = 0;