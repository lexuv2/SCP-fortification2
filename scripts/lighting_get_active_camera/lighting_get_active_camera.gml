/// @desc Gets the active camera
/// @returns The active camera port [X, Y, Width, Height]
function lighting_get_active_camera() {

	if(global.worldCustomCamera == undefined) {
		// Get active view camera
		var camera = camera_get_active();
		var cameraX = scr_get_screen_x()-40;
		var cameraY = scr_get_screen_y()-40;
		var cameraW = scr_get_view_width()+80;
		var cameraH = scr_get_view_height()+80;
		return [cameraX, cameraY, cameraW, cameraH];
	}

	return global.worldCustomCamera;


}
