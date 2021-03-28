/*	
	This function will activate the ability to activate the battery.
	Called every step on Obj_Player
	actionButton = e, is created on Obj_Game
*/ 
function DamActivation(){
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// Dam is activated, battery can now be activated.
		if (place_meeting(x, y, Obj_Button_Interaction_Boundry_A2) && actionButton){
			damConsoleActive = true;
		}
		//else if ((place_meeting(x, y, Obj_Button_Interaction_Boundry_A2) && actionButton && damConsoleActive) || !place_meeting(x, y, Obj_Button_Interaction_Boundry_A2)){}
		else if (!place_meeting(x, y, Obj_Button_Interaction_Boundry_A2)) {
			damConsoleActive = false;
			// If the incorrect values are entered
			// Then the values will reset
			if(firstValue != 1 && secondValue != 1){
				firstValue = 0;
				secondValue = 0;
			}
		}
	}
}