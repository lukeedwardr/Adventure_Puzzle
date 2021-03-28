/*	
	This function will activate the ability to move the rail cart.
	Called every step on Obj_Player
	actionButton = e, is created on Obj_Game
*/ 
function BatteryActivation(){
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// Battery is activated, rail cart can now move
		if(place_meeting(x, y, Obj_Button_Interaction_Boundry_A1) && actionButton){
			Obj_Switch_Button_A1.sprite_index = Spr_Button_Down;
			Obj_Switch_Button_A1.batteryIsActive = true;
		}
	}
}