/// @description Insert description here
// You can write your code in this editor

//Camera Variables
view_xmin = 0;
view_xmax = 480;
view_ymin = 0;
view_ymax = 270;

defCam = camera_create_view(0, 0, 480, 270);
var destroycam = view_get_camera(0);
camera_destroy(destroycam);
view_set_camera(0, -1);
view_set_camera(0, defCam);

cRoom = noone; //set to default

//Initialize, follow player.