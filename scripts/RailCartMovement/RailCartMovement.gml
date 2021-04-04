/* 
	When the rail cart is in position at B1/C2 it will move to the oposite postion via path.
	Called on every step of Obj_RailCart
*/
function RailCartMovement(){
	
	// IF the track switch is inactive
	if(Obj_RailCart_Track_Switch.switchPathToBattery == false){
		// IF the rail cart is at C2 (Origin point) AND the C2 button is pressed
		// THEN the rail cart will move to B1
		if(Obj_Switch_Button_C2.sprite_index = Spr_Button_Down && (Obj_RailCart.x = Obj_RailCart.xPositionAtC2 && Obj_RailCart.y = Obj_RailCart.yPositionAtC2)){
			path_start(Path_C2toB1, 1, path_action_stop, 1);
		}
		// IF the rail cart is in B1 AND the B1 button is pressed AND the track switch is inactive
		// THEN the rail cart will move to C2
		if(Obj_Switch_Button_B1.sprite_index = Spr_Button_Down && (Obj_RailCart.x = Obj_RailCart.xPositionAtB1 && Obj_RailCart.y = Obj_RailCart.yPositionAtB1)){
			path_start(Path_B1toC2, 1, path_action_stop, 1);
		}
		ButtonSpriteReset();
	
	}
	
	// IF the track switch is active
	else if(Obj_RailCart_Track_Switch.switchPathToBattery == true){
		// IF the rail cart is at C2 (Origin point) AND the C2 button is pressed
		// THEN the rail cart will move to A1
		if(Obj_Switch_Button_C2.sprite_index = Spr_Button_Down && (Obj_RailCart.x = Obj_RailCart.xPositionAtC2 && Obj_RailCart.y = Obj_RailCart.yPositionAtC2)){
			path_start(Path_C2toA1, 1, path_action_stop, 1);
		}
		// IF the rail cart is at A1 AND the A1 button is pressed AND the track switch is active
		// THEN the rail cart will move to C2
		if(Obj_RailCart_Button_A1.sprite_index = Spr_Button_Down && (Obj_RailCart.x = Obj_RailCart.xPositionAtA1 && Obj_RailCart.y = Obj_RailCart.yPositionAtA1)){
			path_start(Path_A1toC2, 1, path_action_stop, 1);
		}
		ButtonSpriteReset();
	}
}