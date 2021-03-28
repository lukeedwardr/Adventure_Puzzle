/*	
	This function will activate the ability to activate the battery.
	Called every step on Obj_Player
	actionButton = e, is created on Obj_Game
*/ 
function DamActivation(){
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// Dam is activated, battery can now be activated.
		if(place_meeting(x, y, Obj_Button_Interaction_Boundry_A2) && actionButton){
			Obj_Switch_Button_A2.sprite_index = Spr_Button_Down;
			Obj_Switch_Button_A2.damIsActive = true;
		}
	}
}