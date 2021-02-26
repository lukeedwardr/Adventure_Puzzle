function PlayerMovement(){
	// Variables
	up = keyboard_check(ord("W"));
	down = keyboard_check(ord("S"));
	left = keyboard_check(ord("A"));
	right = keyboard_check(ord("D"));
	
	// Walking animation plays when player moves
	if (up || down || left || right){
		sprite_index = Spr_Player_Front_Walking;
		
		// Movement
		if(up){
			Obj_Player.y = Obj_Player.y - 1;
		}
		else if(down){
			Obj_Player.y = Obj_Player.y + 1;
		}
	
		if(left){
			Obj_Player.x = Obj_Player.x - 1;
		}
		else if(right){
			Obj_Player.x = Obj_Player.x + 1;
		}
	}
	// Idle sprite when not moving
	else {
		sprite_index = Spr_Player_Front_Idle;
	}
}