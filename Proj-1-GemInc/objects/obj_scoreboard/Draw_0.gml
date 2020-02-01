/// @description Draw Scoreboard
// You can write your code in this editor

//playerhealth
if instance_exists(obj_player)
{
	draw_healthbar(8,8,256,32,obj_player.hp, c_black, c_red, c_lime, 0, true, true);
}

//score
draw_text(16, 64, "Score: " +string(iscore));


//LOSE CONDITIONS
if !instance_exists(obj_player) then lose_condition();

//WIN CONDITIONS
if !instance_exists(obj_basicEnemy) then win_condition();