playerCanMove = true;

// Used in houseInteriorTransition()
// Will enable player transitioning from outside and house interior
playerIsOutside = true;

// Used in PlayerMovement()
// Needed in order to set variable value when building game.
previous_sprite_index = Spr_Player_Front_Walking;

// Is used in ReadSignPost() function to toogle on and off the text box.
wellSignTextBoxActive = false;

// Used in ReadHouseNote() to toggle on and off the text box
houseNoteTextBoxActive = false;

// Is used in DamConsoleInput() function to show a console window 
// which will then show numbers input from the keyborad
damConsoleActive = false;

// Values used for the dam console
// Used in DamConsoleInput() function
firstValue = 0;
secondValue = 0;
thirdValue = 0;
fourthValue = 0;

// Correct values that will activation Dam

// Number of Geometic Rocks
correctFirstValue = 7;
// Number of Red Flowers
correctSecondValue = 6;
// Number of bends in the river
correctThirdValue = 3;
// Number of frog statues in the lake
correctFourthValue = 4;