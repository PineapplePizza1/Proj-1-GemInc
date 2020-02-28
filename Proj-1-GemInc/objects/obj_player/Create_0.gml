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
texelW = 2*texture_get_texel_width(sprite_get_texture(sprite_index,0));
texelH = 2*texture_get_texel_height(sprite_get_texture(sprite_index,0));
flash = shader_get_uniform(shd_defShader1, "flash");


//outline color
outlineColor = shader_get_uniform(shd_defShader1, "outColor");
color_array = array_create(4);
color_array[0] = 0/255.0;
color_array[1] = 0/255.0;
color_array[2] = 255/255.0;
color_array[3] = 1.0;

damaged = false;
flashup = true;
stealthed = false;
flashval = 1.0;




//metroidvania ability unlock system
//0 means do not have, 1 means level 1, 2 means lvl 2, etc.
mv_shotUpgrade = 0;
mv_jumpUpgrade = 0;
mv_stealthUpgrade = 0;