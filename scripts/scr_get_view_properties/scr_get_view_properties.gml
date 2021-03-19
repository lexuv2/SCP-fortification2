// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_get_view_height(){
return camera_get_view_height(view_camera[0])
}

function scr_get_view_width(){
return camera_get_view_width(view_camera[0])
}


function scr_get_screen_x(){
	return obj_camera.x-scr_get_view_width()/2
return camera_get_view_x(view_camera[0])
}

function scr_get_screen_y(){
	return obj_camera.y-scr_get_view_height()/2
return camera_get_view_y(view_camera[0])
}

