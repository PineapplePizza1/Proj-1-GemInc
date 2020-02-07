/// @description Insert description here
// You can write your code in this editor

//Camera Variables

defCam = camera_create_view(0, 0, cameraWidth, cameraHeight);

var destroycam = view_get_camera(0);
camera_destroy(destroycam);
	//Destroying camera, because certain camera functions only work with cameras you create.
view_set_camera(0, -1);
view_set_camera(0, defCam);

cRoom = noone; //set to default

//Initialize, follow player.