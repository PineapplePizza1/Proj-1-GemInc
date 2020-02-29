//Script for player jumping. //All the rest of the jump script is in player, because it has important variables. 
//But this just sets the jump to match with upgrades.
//jump is based off of percents of base jump heights

var jumpgrade = -5;

switch (upgrade_Array[1]) //Jump upgrade level
{
	case 0:
		jumpgrade = .5*jumpHeight;
		break;
	case 1:
		//disable for 1 sec
		jumpgrade = jumpHeight;
		break;
	case 2:
		//disable for 3 sec
		jumpgrade = 1.5* jumpHeight;
		break;
	default:
		break;
}

vspeed = jumpgrade;