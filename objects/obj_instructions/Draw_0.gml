/// @description Draw the text and menu button on the screen

draw_set_font(fnt_monogram);

draw_text_transformed_color(room_width*0.33, room_height*0.1, "How To Play", 1.5, 1.5, image_angle, 0, 0, 0, 0, image_alpha);
draw_text_transformed(room_width*0.1, room_height*0.25, "Use the arrow keys to move around", 1, 1, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.35, "Press the space bar to shoot", 1, 1, image_angle);


/// Code below adapted from Easy Menu System - GameMaker 2 asset pack
/// Created by Conradical Games; all comments in code below are theirs
/// https://conradical-games.itch.io/ezmenu

// Getting width of cursor to separate it a bit from the menu
var cursWidth = sprite_get_width(spr_cursor);

// Draw cursor at where it should be, but half its width 
// to the left of the menu
draw_sprite(spr_cursor, -1, x + cursorLevitate - cursWidth/2, y + selectLerp*spacing);

draw_text_transformed_color(room_width*0.45, room_height*0.8, "Menu", 1, 1, image_angle, 0, 0, 0, 0, image_alpha);