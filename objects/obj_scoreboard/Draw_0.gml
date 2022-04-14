/// @description Insert description here
if instance_exists(obj_player) then
{
	draw_healthbar(8, 8, 256, 32, obj_player.hp, c_black, c_red, c_lime, 0, true, true);
	draw_text(16, 64, "Score: "+string(obj_player.points))
}

if(win == true){
	draw_text(room_width / 3, room_height / 2, "You defeated all enemies! Press R to restart.")
}

if(lose == true){
	draw_text(room_width / 3, room_height / 2, "You died... Press R to restart.")
}
