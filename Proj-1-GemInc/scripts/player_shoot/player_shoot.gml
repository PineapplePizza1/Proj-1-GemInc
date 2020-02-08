//Fire a bullet, based on your upgrade level. then shoot
//argument 0 = direction of shot
//rest of values are inferred by player state.
//As upgrades happen, send upgrades to bullets, via moving platforms

var shotDamage = 0;

switch (mv_shotUpgrade)
{
	case 0:
		break;
	case 1:
		//disable for 1 sec
		shotDamage = .5;
		break;
	case 2:
		//disable for 3 sec
		shotDamage = 3;
		break;
	default:
		break;
}

if mv_shotUpgrade != 0 then shoot_object(obj_bullet, argument0, obj_player.fireSpeed, shotDamage);