/// @description Camera work setup
// You can write your code in this editor
//NOTE: default view will be in viewport 0, minimap in viewport 2.

//Camera Variables

defCam = camera_create_view(0, 0, cameraWidth, cameraHeight);

var destroycam = view_get_camera(0);
camera_destroy(destroycam);
	//Destroying camera, because certain camera functions only work with cameras you create.
view_set_camera(0, -1);
view_set_camera(0, defCam);

cRoom = noone; //set to default

//Initialize to player's location
var spradiusX = followObj.sprite_width/2;
var spradiusY = followObj.sprite_height/2;
camera_set_view_pos(defCam, (followObj.x - spradiusX - followBorder) - StartBordx , (followObj.y - cameraHeight + spradiusY + followBorder) + StartBordy ); 
