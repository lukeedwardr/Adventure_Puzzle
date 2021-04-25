/*	
	This function will set the values of the Dam console back to 0 if any of the values are entered incorrectly
*/ 
function DamConsoleInputResetValues(){
	with(Obj_Player){
		damConsoleActive = false;		
		if((firstValue != correctFirstValue || secondValue != correctSecondValue || thirdValue != correctThirdValue || fourthValue != correctFourthValue)){
			firstValue = 0;
			secondValue = 0;
			thirdValue = 0;
			fourthValue = 0;
		}
	}
}