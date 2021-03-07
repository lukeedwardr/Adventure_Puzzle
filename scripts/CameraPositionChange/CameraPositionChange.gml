// Will set the camera's position to the section of the room that the player is currently in.
function CameraPositionChange(){
	// Checks if player is in row 2 of room sections	
	if(Obj_Player.y > 360){
		// Checks which column (A2, B2, C2) the player is in and sets camera view
		// A2
		if(Obj_Player.x >= 0 && Obj_Player.x <= 360){
			camera_set_view_pos(view_camera[0], 0, 360);
		}
		// B2
		else if(Obj_Player.x >= 361 && Obj_Player.x <= 720){
			camera_set_view_pos(view_camera[0], 360, 360);
		}
		// C2
		else if(Obj_Player.x >= 721 && Obj_Player.x <= 1080){
			camera_set_view_pos(view_camera[0], 720, 360);
		}
	}
	// Checks if player is in row 1 of room sections
	else{
		// A1
		if(Obj_Player.x >= 0 && Obj_Player.x <= 360){
			camera_set_view_pos(view_camera[0], 0, 0);
		}
		// B1
		else if(Obj_Player.x >= 361 && Obj_Player.x <= 720){
			camera_set_view_pos(view_camera[0], 360, 0);
		}
		// C1
		else if(Obj_Player.x >= 721 && Obj_Player.x <= 1080){
			camera_set_view_pos(view_camera[0], 720, 0);
		}
	}
}