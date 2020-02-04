///@descr an easy Debug tool that draws the collider that a place_meeting would make.
//REMEMBER: only works in the Draw event!
//argument0 = the x location/component. ex:x+(currentSpeed*dir)
//argument1 = the y location/component. ex:y-2;

draw_set_colour(c_yellow);
var spradius = sprite_width/2;

//draw sprite
draw_sprite(spr_black,0,x,y);

//shift for stayonplatforms
var xloc = argument0;
var yloc = argument1;

draw_rectangle(xloc-spradius, yloc-spradius, xloc+spradius, yloc+spradius, false); //debug

//change collisison codes.