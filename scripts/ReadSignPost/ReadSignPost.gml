
function ReadSignPost(){
	// E is pressed
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// IF the player is in collision with the signpost object AND 'E' is pressed AND text box is inactive
		// THEN something will happen
		if (place_meeting(x, y, Obj_SignPost_Boundry) && actionButton && !textBoxActive){
			textBoxActive = true;
		}
		// IF the player is in collision with the signpost object AND 'E' is pressed
		// THEN something will happen
		else if (place_meeting(x, y, Obj_SignPost_Boundry) && actionButton && textBoxActive) {
			draw_text(0,0,"This is a test");
		}
	}

}

// Something to think about if there are multiple readable objects in the room.
// Get the position of the specific object instance ->
// Then use a CASE function to pull in the corrisponding text for that instance.