/// @description Pause,

#region pause function
//button toggle
if(keyboard_check_pressed(vk_escape)){
    paused = !paused;
    if(!sprite_exists(screenshot)){
		//take a screenshot of gameplay to activate
        screenshot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}

//toggle for pause
if(paused){
    instance_deactivate_all(1); //deactivate all objects, except pause
}else{
    if(sprite_exists(screenshot)){
        sprite_delete(screenshot);//delete screenshot sprite
    }
    instance_activate_all();//reactivate on unpause
}
#endregion
