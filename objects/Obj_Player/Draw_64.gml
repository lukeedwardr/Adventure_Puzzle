// draw_text_color(5,250,"Draw GUI on player object", 255, 255, 255, 255, 100);
// Sign Post
if(wellSignTextBoxActive){
	draw_rectangle_color(5,250,360,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(15,250,"The guardian hides from the light,", 255, 255, 255, 255, 100);
	draw_text_color(35,265,"underfoot until the night", 255, 255, 255, 255, 100);
}
// Dam Console Code Clue
if(houseNoteTextBoxActive){
	draw_rectangle_color(5,250,360,320,c_black,c_black,c_black,c_black,false)
	draw_text_color(15,250,"Perfect black rocks,", 255, 255, 255, 255, 100);
	draw_text_color(35,265,"contrasted with crimson bloom", 255, 255, 255, 255, 100);
	draw_text_color(15,280,"Blue river bending,", 255, 255, 255, 255, 100);
	draw_text_color(35,295,"pillars from the source's tomb", 255, 255, 255, 255, 100);
}

// Dam Console for entering numbers
if(damConsoleActive){
	draw_rectangle_color(5,250,320,300,c_black,c_black,c_black,c_black,false)
	draw_text_color(5,250, firstValue, 255, 255, 255, 255, 100);
	draw_text_color(25,250, secondValue, 255, 255, 255, 255, 100);
	draw_text_color(45,250, thirdValue, 255, 255, 255, 255, 100);
	draw_text_color(65,250, fourthValue, 255, 255, 255, 255, 100);
}