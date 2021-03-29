/*	
	This function will set the values of the Dam console to 0 if entered incorrectly 
	OR the player moves away from the console.
*/ 
function DamConsoleInputResetValues(){
	with(Obj_Player){
		damConsoleActive = false;
		if((firstValue != correctFirstValue && secondValue != correctSecondValue)
		|| (firstValue != correctFirstValue || secondValue == correctSecondValue)
		|| (firstValue == correctFirstValue || secondValue != correctSecondValue))
		{
			firstValue = 0;
			secondValue = 0;
		}
		/*
		else if(firstValue != 1 || secondValue == 1){
			firstValue = 0;
			secondValue = 0;
		}
		*/
	}
}