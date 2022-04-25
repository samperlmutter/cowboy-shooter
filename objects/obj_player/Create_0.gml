/// @description Insert description here
// You can write your code in this editor
event_inherited()

isShooting = false
bulletX = x
bulletY = y

//points = 0

was_hit = false;
hit_timer = 0;
hit_release = room_speed * 0.5;

sh_handle_timer = shader_get_uniform(sh_DamageFlashRed, "uTimer");