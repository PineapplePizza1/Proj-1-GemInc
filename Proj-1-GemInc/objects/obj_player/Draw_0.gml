/// @description Draw Event, shader utilized
// You can write your code in this editor

#region Setting sprite
if upgrade_Array[0] >= 2 then sprite_index = spr_Axis_up1;
if upgrade_Array[2] >= 1 then sprite_index = spr_Axis_upf;

if currentState == spriteStates.moving then image_speed = 1 else image_speed = 0;
if currentState == spriteStates.standing then image_index = 0;
if currentState == spriteStates.jumping then image_index = 1;

if currFace == faceDir.left then image_xscale = -1 else image_xscale = 1;

#endregion



#region setting flash
if (currentHState == healthStates.damaged) //can't use while, it stops the game.
{
	if flashval >1 then flashup = false;
	if flashval <0 then flashup = true;
	
	if flashup then flashval += .33
	else flashval -=.33;
	
}

if currentHState == healthStates.stealthed then flashval = .25;


#endregion

shader_set(shd_defShader1);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);
shader_set_uniform_f_array(outlineColor, color_array);

shader_set_uniform_f(flash, flashval);



if currentHState != healthStates.respawn then draw_self(); //draw the sprite, if not respawning

shader_reset();