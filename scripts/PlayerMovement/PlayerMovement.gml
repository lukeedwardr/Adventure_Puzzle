function PlayerMovement(){
	// Variables
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	movementSpeed = 1.2;
	// Walking animation plays when player moves
	if (up || down || left || right){	
		// Movement
		if(up){
			sprite_index = Spr_Player_Back_Walking;
			previous_sprite_index = Spr_Player_Back_Walking;
			Obj_Player.y = Obj_Player.y - movementSpeed;
		}
		else if(down){
			sprite_index = Spr_Player_Front_Walking;
			previous_sprite_index = Spr_Player_Front_Walking;
			Obj_Player.y = Obj_Player.y + movementSpeed;
		}
	
		if(left){
			sprite_index = Spr_Player_LeftSide_Walking;
			previous_sprite_index = Spr_Player_LeftSide_Walking;
			Obj_Player.x = Obj_Player.x - movementSpeed;
		}
		else if(right){
			sprite_index = Spr_Player_RightSide_Walking;
			previous_sprite_index = Spr_Player_RightSide_Walking;
			Obj_Player.x = Obj_Player.x + movementSpeed;
		}
	}
	// Set idle sprite
	else {
		PlayerSetIdleSprite();
	}
}
