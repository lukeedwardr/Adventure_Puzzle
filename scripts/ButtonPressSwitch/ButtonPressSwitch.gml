function ButtonPressSwitch(){
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		if (place_meeting(x, y, Obj_Button_Interaction_Boundry) && actionButton && Obj_Button_Activation_Test.sprite_index = Spr_Inactive_Test){
			Obj_Button_Test.sprite_index = Spr_Button_Down;
			Obj_Button_Activation_Test.sprite_index = Spr_Active_Test;
		}
		else if (place_meeting(x, y, Obj_Button_Interaction_Boundry) && actionButton) {
			Obj_Button_Activation_Test.sprite_index = Spr_Inactive_Test;
			Obj_Button_Test.sprite_index = Spr_Button_Up;
		}
	}
}