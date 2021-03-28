PlayerMovement();
ReadSignPost();
DamActivation();
// The dam needs to be active in order for the battery to be activated.
if(Obj_Switch_Button_A2.damIsActive && !Obj_Switch_Button_A1.batteryIsActive){
	BatteryActivation();
}
// The battery needs to be active in order for the rail cart to be moved.
if(Obj_Switch_Button_A1.batteryIsActive){
	RailCartActivation();
}