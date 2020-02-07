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


//metroidvania ability unlock system
//0 means do not have, 1 means level 1, 2 means lvl 2, etc.
mv_shotUpgrade = 0;
mv_jumpUpgrade = 0;
mv_stealthUpgrade = 0;