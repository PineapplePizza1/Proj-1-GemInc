/// @description Initialize
// Last Changed: Dillon 2/1/20

#region Enums and States
//Player's states are split into several different categories.

enum spriteStates //functions primarily as a visual state, but can function as gameplay states when necessary.
{
	standing,
	moving,
	jumping,
	shooting,
	landed
}
	
enum healthStates{
	healthy,
	stealthed,
	damaged,
	respawn
	
}

enum faceDir
{
	left,
	right
}

currentState = spriteStates.standing;
currFace = faceDir.right;
currentHState = healthStates.healthy;

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
shootModeHack = true;
#endregion

#region Health variables
hp = maxHP;
gravity = gravVal;
damaged = false;

//Respwan
respawnX = x;
respawnY = y;

#endregion

stealthable = true;

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
upgrade_Array = array_create(4)
//for values0 means do not have, 1 means level 1, 2 means lvl 2, etc.
upgrade_Array[0] = 1;//mv_shotDMGlvl
upgrade_Array[1] = 0;//mv_jumpUpgrade
upgrade_Array[2] = 0;//mv_stealthUpgrade
upgrade_Array[3] = 0;//mv, bullet unlocks, 0 = no shoot, 1 = hackign only, 2 = switch.
#endregion