/// @description Initialize
// Last Changed: Dillon 2/1/20

//counters
jumpCounter = 0;
jumped = false;
canShoot = true;

shootRight = true;
fireSpeed = bulletSpeed;

//rarely change
jumpHold = .21;


//Player Stats
hp = maxHP;
gravity = gravVal;


//metroidvania ability unlock system
abilities[0] = true;
abilities[1] = false;