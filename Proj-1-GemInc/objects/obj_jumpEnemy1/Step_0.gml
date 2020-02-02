/// @description Insert description here
// You can write your code in this editor

//AI
//need to increment jumpcounter out here.
jumpCounter ++;
jumpCounter = clamp(jumpCounter, 0, jumpTimer);


jump_off_platform_AI();
wall_jump_AI();

// Inherit the parent event
event_inherited();

