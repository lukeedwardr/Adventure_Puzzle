function InteractPrompt(){
	if(place_meeting(Obj_Player.x, Obj_Player.y, Obj_Button_Interaction_Boundry)){
		draw_sprite(Spr_Interaction_Prompt, 0, Obj_Player.x+9, Obj_Player.y-12);
	}
}