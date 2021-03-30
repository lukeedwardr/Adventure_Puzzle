/*	
	This function will activate a text box.
	It will allow a signpost to be read.
	Interacting with it was either show the text box or hide the text box.
	Moving away from the signpost will also hide the text box.
	This requires the two objects, Obj_SignPost_Boundry.
*/ 
function ReadSignPost(){
	// E is pressed
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_SignPost_Boundry)){
		// IF the player is in collision with the signpost object AND 'E' is pressed AND text box is inactive
		// THEN something will happen
		if (place_meeting(x, y, Obj_SignPost_Boundry) && actionButton && wellSignTextBoxActive == false){
			wellSignTextBoxActive = true;
		}
		// IF the player is in collision with the signpost object AND 'E' is pressed
		// THEN something will happen
		else if ((place_meeting(x, y, Obj_SignPost_Boundry) && actionButton && wellSignTextBoxActive) || !place_meeting(x, y, Obj_SignPost_Boundry)){
			wellSignTextBoxActive = false;
		}
	}
}

// Something to think about if there are multiple readable objects in the room.
// Get the position of the specific object instance ->
// Then use a CASE function to pull in the corrisponding text for that instance.