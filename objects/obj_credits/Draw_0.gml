/// @description Draw credits screen
draw_set_font(fnt_monogram);

draw_text_transformed_color(room_width*0.4, room_height*0.1, "Credits", 1.5, 1.5, image_angle, 0, 0, 0, 0, image_alpha);
draw_text_transformed(room_width*0.25, room_height*0.23, "Made By Team Green Shorts", 1, 1, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.35, "Designer: Chris Mineweaser", 0.8, 0.8, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.45, "Producer: Kristin Pflug", 0.8, 0.8, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.55, "Artist: Donald Robinson", 0.8, 0.8, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.65, "Programmer: Sam Perlmutter", 0.8, 0.8, image_angle);


/// Code below adapted from Easy Menu System - GameMaker 2 asset pack
/// Created by Conradical Games; all comments in code below are theirs
/// https://conradical-games.itch.io/ezmenu

// Getting width of cursor to separate it a bit from the menu
var cursWidth = sprite_get_width(spr_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu
draw_sprite(spr_cursor, -1, x + cursorLevitate - cursWidth/2, y + selectLerp*spacing);

draw_text_transformed_color(room_width*0.45, room_height*0.8, "Menu", 1, 1, image_angle, 0, 0, 0, 0, image_alpha);