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
//set viewport size
view_set_wport(0,cameraWidth);
view_set_hport(0,cameraHeight);

cRoom = noone; //set to default



//Initialize to player's location
camera_set_view_pos(defCam, (followObj.x - followBorder) - StartBordx , (followObj.y - cameraHeight + followBorder) + StartBordy ); 


if borderLeft ==0 then borderLeft = followBorder;
if borderRight ==0 then borderRight = followBorder;
if borderUp ==0 then borderUp = followBorder;
if borderDown ==0 then borderDown = followBorder;