/// @description Lose Condition

if currentHState = healthStates.respawn then draw_text(view_wport[0]* 0.5, view_hport[0] *0.5, "You Died! Respawning in: " + string(alarm[5]/room_speed));

if !instance_exists(obj_BossEnemy) {
	draw_text(view_wport[0]* 0.5, view_hport[0] *0.5, "Congrats! You Beat Xetro!");
	show_debug_message("EasyCheese");
}