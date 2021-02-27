/*	This function will act as a switch.
	It will allow a button to be pressed multiple times to either activate or deactive something.
	This requires the two objects, Object_Button_Interaction_Boundry and Obj_Button_Test
*/ 
function ButtonPressSwitch(){
	// E is pressed
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// IF the player is in collision with the button boundry object AND 'E' is pressed AND button target is inactive
		// THEN something will happen
		if (place_meeting(x, y, Obj_Button_Interaction_Boundry) && actionButton && Obj_Button_Activation_Test.sprite_index = Spr_Inactive_Test){
			Obj_Button_Test.sprite_index = Spr_Button_Down;
			Obj_Button_Activation_Test.sprite_index = Spr_Active_Test;
		}
		// IF the player is in collision with the button boundry object AND 'E' is pressed
		// THEN something will happen
		else if (place_meeting(x, y, Obj_Button_Interaction_Boundry) && actionButton) {
			Obj_Button_Activation_Test.sprite_index = Spr_Inactive_Test;
			Obj_Button_Test.sprite_index = Spr_Button_Up;
		}
	}
}