/*
	Transitions between outside and house interior.
	Will enable and disable assets/instances for either outside or house interior.
	Will trigger when player intersects object in doorway.
*/
function houseInteriorTransition(){
	
	/*
	
	Below works when C1_Interior group is under C1
	Will not work when C1_Interior group is over C1
	
	if (instance_exists(Obj_Enter_House_C1)){
		if (place_meeting(x, y, Obj_Enter_House_C1) && playerIsOutside){
			// instances inside house
			layer_set_visible(42, false);
			// instances outside house
			layer_set_visible(44, true);
			// instances outside house
			instance_deactivate_layer(42);
			// instances inside house
			instance_activate_layer(44);
			playerIsOutside = false;
			Obj_Player.x = Obj_Exit_House_C1.x;
			Obj_Player.y = Obj_Exit_House_C1.y - 10;
		}
	}
	else if (instance_exists(Obj_Exit_House_C1)){
		if (place_meeting(x, y, Obj_Exit_House_C1)){
			layer_set_visible(42, true);
			layer_set_visible(44, false);
			// instances inside house
			instance_deactivate_layer(44);
			// instances outside house
			instance_activate_layer(42);
			playerIsOutside = true;		
			Obj_Player.x = Obj_Enter_House_C1.x;
			Obj_Player.y = Obj_Enter_House_C1.y + 10;
		}
	}
	
	*/
	
	
	// BELOW IS A TEST
	if (instance_exists(Obj_Enter_House_C1)){
		if (place_meeting(x, y, Obj_Enter_House_C1) && playerIsOutside){
			// instances outside house
			layer_set_visible(44, false);
			// instances inside house
			layer_set_visible(36, true);
			// instances outside house
			instance_deactivate_layer(44);
			// instances inside house
			instance_activate_layer(36);
			playerIsOutside = false;
			Obj_Player.x = Obj_Exit_House_C1.x;
			Obj_Player.y = Obj_Exit_House_C1.y - 10;
		}
	}
	else if (instance_exists(Obj_Exit_House_C1)){
		if (place_meeting(x, y, Obj_Exit_House_C1)){
			// instances inside house
			layer_set_visible(42, true);
			// instances outside house
			layer_set_visible(44, false);
			// instances inside house
			instance_deactivate_layer(36);
			// instances outside house
			instance_activate_layer(44);
			playerIsOutside = true;		
			Obj_Player.x = Obj_Enter_House_C1.x;
			Obj_Player.y = Obj_Enter_House_C1.y + 10;
		}
	}
	// ABOVE IS A TEST
}