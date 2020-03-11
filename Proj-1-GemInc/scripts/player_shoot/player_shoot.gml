//Fire a bullet, based on your upgrade level. then shoot
//argument 0 = direction of shot
//rest of values are inferred by player state.
//As upgrades happen, send upgrades to bullets, via moving platforms

var shotDamage = 0;
var bulletUpgr = obj_bullet; 

if shootModeHack == true{
	
	//HACK
	bulletUpgr = obj_bulletHack
	
	switch (upgrade_Array[0]) //HACK DMG VALS
	{
		case 0:
			break;
		case 1:
			//disable for 3 seconds
			shotDamage = 3;
			break;
		case 2:
			//disable for 5 seconds
			shotDamage = 5;
			break;
		default:
			break;
	}
}
else 
{
	//LETHAL
	bulletUpgr = obj_bullet;
	
	switch (upgrade_Array[0]) //LETHAL DMG VALS
	{
		case 0:
			break;
		case 1:
			//do 10 damage
			shotDamage = 10;
			break;
		case 2:
			//do 30 damage
			shotDamage = 35;
			break;
		default:
			break;
			
	}
}



if upgrade_Array[0] != 0 then shoot_object(bulletUpgr, argument0, obj_player.fireSpeed, shotDamage);