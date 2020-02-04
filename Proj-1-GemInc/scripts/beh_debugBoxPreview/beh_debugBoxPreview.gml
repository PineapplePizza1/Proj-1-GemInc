draw_set_colour(c_yellow);
var spradius = sprite_width/2;

//draw sprite
draw_sprite(spr_black,0,x,y);

//shift for stayonplatforms
var xloc = x+(spradius*currentSpeed)*dir;
var yloc = y+2;

draw_rectangle(xloc-spradius, yloc-spradius, xloc+spradius, yloc+spradius, false); //debug

//change collisison codes.