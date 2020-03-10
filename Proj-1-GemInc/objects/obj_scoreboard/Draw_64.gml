/// @description Draw Scoreboard
// You can write your code in this editor

if instance_exists(obj_player)
{
	draw_healthbar(8,8,256,32,obj_player.hp, c_black, c_red, c_lime, 0, true, true);
	var gunType = "";
	with(obj_player){
	if shootModeHack == true then gunType = "Hacking" else gunType = "Lethal"
	}
	draw_text(16, 64, "Gun: " + gunType);
}
else draw_healthbar(8,8,256,32, 0, c_black, c_red, c_lime, 0, true, true);


//score
//draw_text(16, 64, "Score: " +string(iscore));

