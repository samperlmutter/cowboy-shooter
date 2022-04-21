/// @description Insert description here
if(was_hit){
	shader_set(sh_DamageFlashRed);
	draw_self();
	shader_set_uniform_f(sh_handle_timer, hit_timer);
	shader_reset();
}else {
	draw_self();
}

