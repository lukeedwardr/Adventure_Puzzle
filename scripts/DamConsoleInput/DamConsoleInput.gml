/*
	This function is used to take number values from user.
	When the correct values are entered the dam will be activate which will enable the battery to be used.
	Called every step on Obj_Player if damConsoleActive = true > done via DamActivation()
*/
function DamConsoleInput(){
	playerCanMove = false;
	one = keyboard_check_pressed(ord("1"));
	two = keyboard_check_pressed(ord("2"));
	three = keyboard_check_pressed(ord("3"));
	four = keyboard_check_pressed(ord("4"));
	five = keyboard_check_pressed(ord("5"));
	six = keyboard_check_pressed(ord("6"));
	seven = keyboard_check_pressed(ord("7"));
	eight = keyboard_check_pressed(ord("8"));
	nine = keyboard_check_pressed(ord("9"));
	// Entering console values
	if(firstValue = 0){
		if(one){firstValue = 1;}
		else if(two){firstValue = 2;}
		else if(three){firstValue = 3;}
		else if(four){firstValue = 4;}
		else if(five){firstValue = 5;}
		else if(six){firstValue = 6;}
		else if(seven){firstValue = 7;}
		else if(eight){firstValue = 8;}
		else if(nine){firstValue = 9;}
		// Clears keyboard state so value is not used in Second value
		io_clear();
	}
	// If the second value has been entered then another input will not be taken
	else if(firstValue != 0 && secondValue = 0){
		if(one){secondValue = 1;}
		else if(two){secondValue = 2;}
		else if(three){secondValue = 3;}
		else if(four){secondValue = 4;}
		else if(five){secondValue = 5;}
		else if(six){secondValue = 6;}
		else if(seven){secondValue = 7;}
		else if(eight){secondValue = 8;}
		else if(nine){secondValue = 9;}
	}
	if(firstValue != 0 && secondValue != 0){
		// If the correct values are entered then the dam will be active.
		// This will allow the battery to be used.
		// After values are entered then the console view will disapear.
		instance_create_layer(0,0, "Instances_Alarm", Obj_Alarm_DamConsoleInput);
		playerCanMove = true;
	}
}