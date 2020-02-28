/// @description Initialize
// Last Changed: Dillon 2/1/20

#region Enums and States
//Player's states are more complicated and less finite. Mainly used for sprites and damage.

enum playerStates
{
	standing,
	moving,
	jumping,
	landed,
	damaged,
	respawn,
	stealthed
	
}
enum faceDir
{
	left,
	right
}

currentState = playerStates.standing;
currFace = faceDir.right;

#endregion


#region jump variables
jumpCounter = 0;
jumped = false;
endHold = false; 
jumpHold = .21; //rarely changes
#endregion

#region shoot variables
canShoot = true;
fireSpeed = bulletSpeed;
#endregion

#region Health variables
hp = maxHP;
gravity = gravVal;
damaged = false;
#endregion


#region Camera values
//current room, important for camera
currRoom = noone;

#endregion





#region Shader values
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


flashup = true;
stealthed = false;
flashval = 1.0;
#endregion


#region metroidvania ability unlock system
//0 means do not have, 1 means level 1, 2 means lvl 2, etc.
mv_shotUpgrade = 0;
mv_jumpUpgrade = 0;
mv_stealthUpgrade = 0;
#endregion