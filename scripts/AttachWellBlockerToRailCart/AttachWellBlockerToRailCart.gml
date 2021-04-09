/*
	WHEN the rail cart is in A1 AND the player interacts with the well blocker
	THEN the rail cart and well blocker will become one object.
*/
function AttachWellBlockerToRailCart(){
	if (place_meeting(x, y, Obj_WellBlock_Interaction_Boundry) && actionButton){
		Obj_RailCart.sprite_index = Spr_RailCart_WellBlocker_Attach;
		instance_destroy(Obj_WellBlock_Interaction_Boundry, true);
		instance_destroy(Obj_WellBlock, true);
	}
}