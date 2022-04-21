/// @description Insert description here
c_x = camera_get_view_x(view_camera[0])
c_y = camera_get_view_y(view_camera[0])

if instance_exists(obj_player) then
{
	draw_healthbar(c_x + 8, c_y + 8, c_x + 256, c_y + 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true);
	draw_text_transformed_color(c_x + 16, c_y + 50, "SCORE: "+string(obj_player.points), 1.5, 1.5, image_angle, 0, 0, 0, 0, image_alpha);
}
