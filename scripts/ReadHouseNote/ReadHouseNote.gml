/*	
	This function will activate a text box.
	It will allow the house note to be read.
	Interacting with it was either show the text box or hide the text box.
	Moving away from the signpost will also hide the text box.
	This requires the two objects, Obj_Note_Interaction_Boundry_C1.
*/ 
function ReadHouseNote(){
	if (instance_exists(Obj_Note_Interaction_Boundry_C1)){
		// IF the player is in collision with the signpost object AND 'E' is pressed AND text box is inactive
		// THEN something will happen
		if (place_meeting(x, y, Obj_Note_Interaction_Boundry_C1) && actionButton && houseNoteTextBoxActive == false){
			houseNoteTextBoxActive = true;
		}
		// IF the player is in collision with the signpost object AND 'E' is pressed
		// THEN something will happen
		else if ((place_meeting(x, y, Obj_Note_Interaction_Boundry_C1) && actionButton && houseNoteTextBoxActive) || !place_meeting(x, y, Obj_Note_Interaction_Boundry_C1)){
			houseNoteTextBoxActive = false;
		}
	}
}