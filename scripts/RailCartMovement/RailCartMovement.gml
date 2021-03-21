// Called on every step of Obj_RailCart
function RailCartMovement(){
	if(Obj_Switch_Button.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 926 && Obj_RailCart.y = 612) && !cart_did_stop){
	//if(Obj_Switch_Button.sprite_index = Spr_Button_Down){
		Path_Duplication = path_duplicate(Path_RailCart);
		path_start(Path_Duplication, 1, path_action_stop, 1);
	}
	else if(Obj_Switch_Button.sprite_index = Spr_Button_Up && !(Obj_RailCart.x = 926 && Obj_RailCart.y = 612)){
		path_end();
		cart_did_stop = true;
		// Update the first point on path
		if(Obj_RailCart.x = 926 && (Obj_RailCart.y < 612 && Obj_RailCart.y > 504)){
			path_change_point(Path_Duplication, 1, Obj_RailCart.x, Obj_RailCart.y, 100);
		}
		// Update the second point on path
		else if((Obj_RailCart.x < 926 && Obj_RailCart.x > 612) && Obj_RailCart.y = 504){
			//path_delete_point(Path_Duplication, 1);
			path_change_point(Path_Duplication, 2, Obj_RailCart.x, Obj_RailCart.y, 100);
		}
		// Update the third point on path
		//else if(Obj_RailCart.x = 612 && (Obj_RailCart.y < 504 && Obj_RailCart.y > 123)){
			//path_delete_point(Path_Duplication, 0);
			//path_change_point(Path_Duplication, 3, Obj_RailCart.x, Obj_RailCart.y, 100);
		//}
	}
	
	else if(Obj_Switch_Button.sprite_index = Spr_Button_Down && !(Obj_RailCart.x = 926 && Obj_RailCart.y = 612) && cart_did_stop){
		path_start(Path_Duplication, 1, path_action_stop, 1);
	}
	
	/*
	else if(Obj_Switch_Button.sprite_index = Spr_Button_Down && (Obj_RailCart.x = 612 && Obj_RailCart.y = 123)){
		path_delete(Path_Duplication);
		path_start(Path_RailCart_ReverseTest, 1, path_action_stop, 1);
	}
	*/
}