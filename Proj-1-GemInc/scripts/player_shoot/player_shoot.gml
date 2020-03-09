//Fire a bullet, based on your upgrade level. then shoot
//argument 0 = direction of shot
//rest of values are inferred by player state.
//As upgrades happen, send upgrades to bullets, via moving platforms

var shotDamage = 0;
var bulletUpgr = obj_bullet; 

switch (upgrade_Array[0]) //Shot upgrade value
{
	case 0:
		break;
	case 1:
		//do 10 damage
		shotDamage = 10;
		break;
	case 2:
		//do 30 damage
		shotDamage = 30;
		break;
	default:
		break;
}

//toggle bullet type
if shootModeHack == true {
	bulletUpgr = obj_bulletHack 
	shotDamage = shotDamage/10; //divide damage by 10 to make it reasonably seconds
}
else bulletUpgr = obj_bullet;

if upgrade_Array[0] != 0 then shoot_object(bulletUpgr, argument0, obj_player.fireSpeed, shotDamage);