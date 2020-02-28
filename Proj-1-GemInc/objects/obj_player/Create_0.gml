/// @description Initialize
// Last Changed: Dillon 2/1/20

//counters
jumpCounter = 0;
jumped = false;
canShoot = true;
endHold = false; // need additional variable to see if player let go of key
//probably want to script jump at some point.

shootRight = true;
fireSpeed = bulletSpeed;

//current room, important for camera
currRoom = noone;


//rarely change
jumpHold = .21;


//Player Stats initialize
hp = maxHP;
gravity = gravVal;

//shader pixel values and texel value initialization
upixelH = shader_get_uniform(shd_defShader1, "pixelH");
upixelW = shader_get_uniform(shd_defShader1, "pixelW");
texelW = texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = texture_get_texel_height(sprite_get_texture(sprite_index,0));

//outline color
outlineColor = shader_get_uniform(shd_defShader1, "outColor");
color_array = array_create(4);
color_array[0] = 0;
color_array[1] = 0;
color_array[2] = 255;
color_array[3] = 1;



//metroidvania ability unlock system
//0 means do not have, 1 means level 1, 2 means lvl 2, etc.
mv_shotUpgrade = 0;
mv_jumpUpgrade = 0;
mv_stealthUpgrade = 0;