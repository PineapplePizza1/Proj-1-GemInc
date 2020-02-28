/// @description Draw Event, shader utilized
// You can write your code in this editor

//setting flash
if (damaged) //can't use while, it stops the game.
{
	if flashval >1 then flashup = false;
	if flashval <0 then flashup = true;
	
	if flashup then flashval += .33
	else flashval -=.33;
	
}

if stealthed then flashval = .25;

shader_set(shd_defShader1);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);
shader_set_uniform_f_array(outlineColor, color_array);

shader_set_uniform_f(flash, flashval);



draw_self(); //draw the sprite

shader_reset();