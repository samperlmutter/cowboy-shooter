/// @description Insert description here
if instance_exists(obj_player) then
{
	draw_healthbar(8, 8, 256, 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true);
	//draw_text(16, 64, "SCORE: "+string(obj_player.points))
	draw_text_transformed_color(16, 50, "SCORE: "+string(obj_player.points), 1.5, 1.5, image_angle, 0, 0, 0, 0, image_alpha);
}

if(win == true){
	draw_text_transformed_color(350, 350, "YOU WON! PRESS G TO RESTART.", 2, 2, image_angle, 0, 0, 0, 0, image_alpha);
}

if(lose == true){
	draw_text_transformed_color(350, 350, "YOU DIED... PRESS G TO RESTART.", 2, 2, image_angle, 0, 0, 0, 0, image_alpha);
}
