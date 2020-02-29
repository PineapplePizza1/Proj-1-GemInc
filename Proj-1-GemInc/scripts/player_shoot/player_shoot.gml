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
		bulletUpgr = obj_bullet;
		break;
	case 2:
		//disable for 3 sec
		shotDamage = 3;
		bulletUpgr = obj_bulletHack;
		break;
	default:
		break;
}

if upgrade_Array[0] != 0 then shoot_object(bulletUpgr, argument0, obj_player.fireSpeed, shotDamage);