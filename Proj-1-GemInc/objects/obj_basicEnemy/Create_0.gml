/// @description Initialize
// You can write your code in this editor

hp = maxHP;

gravity = gravVal;

damaged = false;

//shader pixel values and texel value initialization
upixelH = shader_get_uniform(shd_defShader1, "pixelH");
upixelW = shader_get_uniform(shd_defShader1, "pixelW");
texelW = 2*texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = 2*texture_get_texel_height(sprite_get_texture(sprite_index,0));
flash = shader_get_uniform(shd_defShader1, "flash");

//outline color
outlineColor = shader_get_uniform(shd_defShader1, "outColor");
color_array = array_create(4);
color_array[0] = 255/255.0;
color_array[1] = 0/255.0;
color_array[2] = 1/255.0;
color_array[3] = 1.0;

damaged = false;
flashup = true;
flashval = 1.0;