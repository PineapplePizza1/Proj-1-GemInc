/// @description Draw Event, shader utilized
// You can write your code in this editor

shader_set(shd_defShader1);
shader_set_uniform_f(upixelW, texelW);
shader_set_uniform_f(upixelH, texelH);
shader_set_uniform_f_array(outlineColor, color_array);
draw_self(); //draw the sprite

shader_reset();