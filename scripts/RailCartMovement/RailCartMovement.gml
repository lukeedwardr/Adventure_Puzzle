/* 
	When the rail cart is in position at B1/C2 it will move to the oposite postion via path.
	Called on every step of Obj_RailCart
*/
function RailCartMovement(){
	
	if(!Obj_RailCart_Track_Switch.switchPathToBattery){
	
		// IF the rail cart is at C2 (Origin point) AND the C2 button is pressed AND the track switch is inactive
		// THEN the rail cart will move to B1
		if(Obj_Switch_Button_C2.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 926 && Obj_RailCart.y = 612)){
			path_start(Path_RailCart_C2toB1, 1, path_action_stop, 1);
		}
		// IF the rail cart is in B1 AND the B1 button is pressed AND the track switch is inactive
		// THEN the rail cart will move to C2
		if(Obj_Switch_Button_B1.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 612 && Obj_RailCart.y = 123)){
			path_start(Path_RailCart_B1toC2, 1, path_action_stop, 1);
		}
		ButtonSpriteReset();
	
	}
	
	else if(Obj_RailCart_Track_Switch.switchPathToBattery){
		// IF the rail cart is at C2 (Origin point) AND the C2 button is pressed AND the track switch is active
		// THEN the rail cart will move to A1
		if(Obj_Switch_Button_C2.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 926 && Obj_RailCart.y = 612)){
			path_start(Path_TEST, 1, path_action_stop, 1);
		}
		// IF the rail cart is at A1 AND the A1 button is pressed AND the track switch is active
		// THEN the rail cart will move to C2
		if(Obj_RailCart_Button_A1.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 296 && Obj_RailCart.y = 90)){
			path_start(Path_RailCart_A1toC2, 1, path_action_stop, 1);
		}
		ButtonSpriteReset();
	}
}