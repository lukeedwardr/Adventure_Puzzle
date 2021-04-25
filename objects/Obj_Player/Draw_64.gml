// draw_text_color(5,250,"Draw GUI on player object", 255, 255, 255, 255, 100);
// Sign Post
if(wellSignTextBoxActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250,"The guardian hides from the ligth,", 255, 255, 255, 255, 100);
	draw_text_color(5,265,"Underfoot until the night.", 255, 255, 255, 255, 100);
}
// Dam Console Code Clue
if(houseNoteTextBoxActive){
	draw_rectangle_color(5,250,320,320,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250,"Perfect black rocks", 255, 255, 255, 255, 100);
	draw_text_color(5,265,"Crimson bloom", 255, 255, 255, 255, 100);
	draw_text_color(5,280,"Flowing blue bending", 255, 255, 255, 255, 100);
	draw_text_color(5,295,"From its source's covered tomb", 255, 255, 255, 255, 100);
}

// Dam Console for entering numbers
if(damConsoleActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250, firstValue, 255, 255, 255, 255, 100);
	draw_text_color(15,250, secondValue, 255, 255, 255, 255, 100);
}