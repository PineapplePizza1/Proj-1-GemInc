/// @description Insert description here
// You can write your code in this editor

//AI
//need to increment jumpcounter out here.
jumpCounter ++;
jumpCounter = clamp(jumpCounter, 0, jumpTimer);


beh_jump_off_platforms();
beh_wall_jump();

// Inherit the parent event
event_inherited();

