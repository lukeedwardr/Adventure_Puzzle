// If the correct values have been entered
// Then Dam is active
if(Obj_Player.firstValue = Obj_Player.correctFirstValue && Obj_Player.secondValue = Obj_Player.correctSecondValue){
	Obj_Switch_Button_A2.sprite_index = Spr_Button_Down;
	Obj_Switch_Button_A2.damIsActive = true;
}
// If the incorrect values are entered
// Then Dam is not active and values are reset
DamConsoleInputResetValues();
Obj_Player.playerCanMove = true;