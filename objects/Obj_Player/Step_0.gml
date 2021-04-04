// Movement will be blocked at certain moments
// Inputting values at Dam console
if(playerCanMove){
	PlayerMovement();
}

// Player interacts with the Well sign or House note clues
ReadHouseNote();
ReadSignPost();

// Player interacts with the rail track path switch
SwitchRailTrack();

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