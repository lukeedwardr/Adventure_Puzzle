PlayerMovement();
ReadSignPost();
BatteryActivation();
// The battery will need to be active in order for the rail cart to be moved.
if(Obj_Switch_Button_A1.batteryIsActive){
	RailCartActivation();
}