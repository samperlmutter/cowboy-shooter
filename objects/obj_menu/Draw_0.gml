/// @description Code for main menu adapted from Easy Menu System - GameMaker 2 asset pack
/// Created by Conradical Games; all comments in code below are theirs
/// https://conradical-games.itch.io/ezmenu
/// ------------------------------------------------------------------------------------------------
/// Monogram font created by datagoblin, licensed for use under Creative Commons Zero v1.0 Universal
/// https://datagoblin.itch.io/monogram


// Set default font
draw_set_font(fnt_monogram);

// Loop through the array containing each menu element
for(i = 0; i < array_length_1d(menu); i++)
{
	// If you're looking at the currently selected element, 
	// then draw it with a certain color, if not, then with
	// another color
	if(selected == i)
	{
		draw_set_color(selectedCol);
	}
	else
	{
		draw_set_color(notSelectedCol);
	}
	
	// Draw the text
	draw_text(x,y+i*spacing, menu[i]);	
}
// Getting width of cursor to separate it a bit from the menu
var cursWidth = sprite_get_width(spr_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu
draw_sprite(spr_cursor, -1, x + cursorLevitate - cursWidth/2, y + selectLerp*spacing);

// Draw game title (at 10% of screen width and height, hence 0.1)
draw_set_color(titleCol);
draw_text_transformed(room_width*0.1, room_height*0.1, gameTitle, titleSize, titleSize,0);

draw_set_color(c_black);
draw_text_transformed(room_width*0.1, room_height*0.9, "Arrow keys to navigate menu, space to confirm", 0.5, 0.5, 0);
