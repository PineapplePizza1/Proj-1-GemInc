/// @description Draw Scoreboard
// You can write your code in this editor

draw_set_halign(fa_left);


if instance_exists(obj_player)
{
	draw_healthbar(8,8,256,32,obj_player.hp, c_black, c_red, c_lime, 0, true, true);
	var gunType = "";
	with(obj_player){
		if upgrade_Array[3] <1 then gunType = "None" else
	if shootModeHack == true then gunType = "Hacking" else gunType = "Lethal"
	}
	draw_text(16, 48, "Gun: " + gunType);
}
else draw_healthbar(8,8,256,32, 0, c_black, c_red, c_lime, 0, true, true);


//score
draw_text(16, 64, "Score: " +string(iscore));


//boss bar
if instance_exists(obj_BossEnemy)
{
	var bossActive = false;
	with (obj_BossEnemy) {
		if currentPhase != bossPhases.Idle then bossActive = true;
	}
	
	if bossActive {
		
		//#s for 832 width
		var leftx = .25 *view_wport[0];
		var lefty = 96;
		var rightx = .75 * view_wport[0];
		var righty = 128;
		
		
		draw_healthbar(leftx,lefty,rightx,righty, obj_BossEnemy.hp, c_black, c_red, c_red, 0, true, true);
		
		draw_set_halign(fa_center);
		draw_text(.5 * view_wport[0], 64, "XETRO");
	
	}
	
	
}




