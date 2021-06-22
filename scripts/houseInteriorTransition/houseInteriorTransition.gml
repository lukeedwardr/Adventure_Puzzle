/*
	Transitions between outside and house interior.
	Will enable and disable assets/instances for either outside or house interior.
	Will trigger when player intersects object in doorway.
*/
function houseInteriorTransition(){
	if(playerIsOutside){
		// instances inside house
		instance_deactivate_layer(44);
	}
	else if!(playerIsOutside){
		// instances inside house
		instance_activate_layer(44);
	}
}