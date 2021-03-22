/*	
	This function will act as a switch.
	It will allow a button to be pressed to activate the rail cart.
	This requires the objects, Obj_Button_Interaction_Boundry (partent), Obj_Switch_Button (parent) and Obj_RailCart
*/ 
function ButtonPressSwitch(){
	// E is pressed
	actionButton = keyboard_check_pressed(ord("E"));
	if (instance_exists(Obj_Button_Interaction_Boundry)){
		// C2 button pressed moves rail cart to B1
		if(place_meeting(x, y, Obj_Button_Interaction_Boundry_C2) && actionButton && (Obj_Switch_Button_C2.sprite_index = Spr_Button_Up && 
		Obj_Switch_Button_B1.sprite_index = Spr_Button_Up) && (Obj_RailCart.x = 926 && Obj_RailCart.y = 612)){
			Obj_Switch_Button_C2.sprite_index = Spr_Button_Down;
		}
		// B1 button pressed moves rail cart to C2
		else if(place_meeting(x, y, Obj_Button_Interaction_Boundry_B1) && actionButton && (Obj_Switch_Button_B1.sprite_index = Spr_Button_Up &&
		Obj_Switch_Button_C2.sprite_index = Spr_Button_Up) && (Obj_RailCart.x = 612 && Obj_RailCart.y = 123)){
			Obj_Switch_Button_B1.sprite_index = Spr_Button_Down;
		}
	}
}