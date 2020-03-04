/// @description Draw pause screen


if(paused){
    draw_sprite_ext(screenshot,0,0,0,1,1,0,c_white,1);
    draw_text(view_wport[0] * 0.5, view_hport[0] * 0.5, "Paused");
}