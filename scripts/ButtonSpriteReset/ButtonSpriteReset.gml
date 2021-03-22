/*
	Once the current path ends it will reset the sprite index of the associated button that initiated the path.
	Called from RailCartMovement, called every step.
*/
function ButtonSpriteReset(){
	// Path index 0 is the path moving B1 to C2
	// Path index 1 is the path moving C2 to B1
	if(path_index = 1 && path_position = 1){
		Obj_Switch_Button_C2.sprite_index = Spr_Button_Up;
	}
	else if(path_index = 0 && path_position = 1){
		Obj_Switch_Button_B1.sprite_index = Spr_Button_Up;
	}
}