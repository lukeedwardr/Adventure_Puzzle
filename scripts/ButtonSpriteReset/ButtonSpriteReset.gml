/*
	Once the current path ends it will reset the sprite index of the associated button that initiated the path.
	Called from RailCartMovement, called every step.
*/
function ButtonSpriteReset(){
	
	// Adding, removing, or altering paths will reindex them so confirm correct index is used to guard correctly.
	
	if(!Obj_RailCart_Track_Switch.switchPathToBattery){
		// Path index 1 is the path moving B1 to C2
		// Path index 3 is the path moving C2 to B1
		if(path_index = 3 && path_position = 1){
			Obj_Switch_Button_C2.sprite_index = Spr_Button_Up;
		}
		else if(path_index = 1 && path_position = 1){
			Obj_Switch_Button_B1.sprite_index = Spr_Button_Up;
		}
	}
	else if(Obj_RailCart_Track_Switch.switchPathToBattery){
		// Path index 2 is the path moving A1 to C2
		// Path index 0 is the path moving C2 to A1
		if(path_index = 0 && (path_position >= 0.98 && path_position <= 1)){
			Obj_Switch_Button_C2.sprite_index = Spr_Button_Up;
		}
		else if(path_index = 2 && (path_position >= 0.98 && path_position <= 1)){
			Obj_RailCart_Button_A1.sprite_index = Spr_Button_Up;
		}
	}
}