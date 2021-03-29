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
			// Ensures player object does not continue walking sprite while inputing values into console.
			PlayerSetIdleSprite();
			damConsoleActive = true;
		}
		else if (!place_meeting(x, y, Obj_Button_Interaction_Boundry_A2)){
			// Set values back to 0
			DamConsoleInputResetValues();
		}
	}
}