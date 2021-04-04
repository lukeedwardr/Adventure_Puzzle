// Movement will be blocked at certain moments
// Inputting values at Dam console
if(playerCanMove){
	PlayerMovement();
}

// Player interacts with the Well sign or House note clues
ReadHouseNote();
ReadSignPost();

// Player interacts with the rail track path switch
// Only available when then rail cart is not moving
if ((Obj_RailCart.x = Obj_RailCart.xPositionAtA1 && Obj_RailCart.y = Obj_RailCart.yPositionAtA1) ||
	(Obj_RailCart.x = Obj_RailCart.xPositionAtB1 && Obj_RailCart.y = Obj_RailCart.yPositionAtB1) ||
	(Obj_RailCart.x = Obj_RailCart.xPositionAtC2 && Obj_RailCart.y = Obj_RailCart.yPositionAtC2)) {
	SwitchRailTrack();
}



// When correct values are entered Dam will be active and function call will stop
if(firstValue != correctFirstValue && secondValue != correctSecondValue){
	DamActivation();
}

// Will show text box will number values
// Numbers are entered, if correct values entered
// Then Dam will be active
if(damConsoleActive){
	DamConsoleInput();
}

// The dam needs to be active in order for the battery to be activated.
if(Obj_Switch_Button_A2.damIsActive && !Obj_Switch_Button_A1.batteryIsActive){
	BatteryActivation();
}

// The battery needs to be active in order for the rail cart to be moved.
if(Obj_Switch_Button_A1.batteryIsActive){
	RailCartActivation();
}