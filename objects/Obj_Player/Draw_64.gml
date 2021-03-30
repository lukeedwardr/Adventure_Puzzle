// draw_text_color(5,250,"Draw GUI on player object", 255, 255, 255, 255, 100);
// Sign Post
if(wellSignTextBoxActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250,"The guardian hides from the ligth,", 255, 255, 255, 255, 100);
	draw_text_color(5,265,"Underfoot until the night.", 255, 255, 255, 255, 100);
}
if(houseNoteTextBoxActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250,"First the energy rocks,", 255, 255, 255, 255, 100);
	draw_text_color(5,265,"TEST", 255, 255, 255, 255, 100);
}

// Dam Console for entering numbers
if(damConsoleActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250, firstValue, 255, 255, 255, 255, 100);
	draw_text_color(15,250, secondValue, 255, 255, 255, 255, 100);
}