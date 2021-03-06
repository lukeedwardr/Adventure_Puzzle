/*
	Will toogle which path the rail cart will take when activated.
	IF false THEN possible paths are C2 to B1 OR B1 to C2
	IF true THEN possible path are C2 to A1 OR A1 to C2
	
	Think about... If at A1 and swtich is inactive, will the rail cart move to B2 or not move?
	Think about... Possibly do not allow direct path beween A1 to B1 and B1 to A1
	
*/
function SwitchRailTrack(){
	if (instance_exists(Obj_RailCart_Track_Switch_Interaction_Boundry)){
		// IF the player is in collision with the signpost object AND 'E' is pressed AND text box is inactive
		// THEN something will happen
		if (place_meeting(x, y, Obj_RailCart_Track_Switch_Interaction_Boundry) && actionButton && Obj_RailCart_Track_Switch.switchPathToBattery = false){
			Obj_RailCart_Track_Switch.switchPathToBattery = true;
			Obj_RailCart_Track_Switch.sprite_index = Spr_RailTrack_Switch_Active;
		}
		// IF the player is in collision with the signpost object AND 'E' is pressed
		// THEN something will happen
		else if ((place_meeting(x, y, Obj_RailCart_Track_Switch_Interaction_Boundry) && actionButton && Obj_RailCart_Track_Switch.switchPathToBattery)){
			Obj_RailCart_Track_Switch.switchPathToBattery = false;
			Obj_RailCart_Track_Switch.sprite_index = Spr_RailTrack_Switch;
		}
	}
}