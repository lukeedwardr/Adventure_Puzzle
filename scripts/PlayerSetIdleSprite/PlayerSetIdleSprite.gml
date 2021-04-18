/*	
	This function will set Idle sprite when not moving
	Set depends on previous sprite used when moving
	Called on DamActivation() AND PlayerMovement()
*/ 
function PlayerSetIdleSprite(){
	with(Obj_Player){
		if(previous_sprite_index == Spr_Player_Back_Walking){
			sprite_index = Spr_Player_Back_Idle;
		}
		else if(previous_sprite_index == Spr_Player_Front_Walking){
			sprite_index = Spr_Player_Front_Idle;
		}
		else if(previous_sprite_index == Spr_Player_LeftSide_Walking){
			sprite_index = Spr_Player_LeftSide_Idle;
		}
		else if(previous_sprite_index == Spr_Player_RightSide_Walking){
			sprite_index = Spr_Player_RightSide_Idle;
		}
		else{sprite_index = Spr_Player_Front_Idle;}
	}
}