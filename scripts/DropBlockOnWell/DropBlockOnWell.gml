/*
	WHEN the rail cart is in AB1 AND the player interacts with the well blocker
	THEN the rail cart and drop the well blocker on the well.
*/
function DropBlockOnWell(){
	if (place_meeting(x, y, Obj_WellBlockDrop_Interaction_Boundry) && actionButton){
		Obj_RailCart.sprite_index = Spr_RailCart;
		Obj_Well.sprite_index = Spr_Well_Covered;
	}
}