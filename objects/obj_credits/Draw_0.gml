/// @description Draw credits screen
draw_set_font(fnt_monogram);

draw_text_transformed_color(room_width*0.4, room_height*0.1, "Credits", 1.5, 1.5, image_angle, 0, 0, 0, 0, image_alpha);
draw_text_transformed(room_width*0.1, room_height*0.25, "Designer: Chris Mineweaser", 1, 1, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.35, "Producer: Kristin Pflug", 1, 1, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.45, "Artist: Donald Robinson", 1, 1, image_angle);
draw_text_transformed(room_width*0.1, room_height*0.55, "Programmer: Sam Perlmutter", 1, 1, image_angle);
