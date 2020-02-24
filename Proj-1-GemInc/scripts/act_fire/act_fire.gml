///Script to fire bullets enemy

//check direction
var directovecto = 0;
if dir <0 {
	directovecto = 180
}

shoot_object(obj_enemyBullet, directovecto, bulletSpeed, bulletDamage);
