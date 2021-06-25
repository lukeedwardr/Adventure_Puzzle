/*
	Transitions between outside and house interior.
	Will enable and disable assets/instances for either outside or house interior.
	Will trigger when player intersects object in doorway.
*/
function houseInteriorTransition(){
	if (instance_exists(Obj_Enter_House_C1)){
		if (place_meeting(x, y, Obj_Enter_House_C1) && playerIsOutside){
			layer_set_visible(42, false);
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
}