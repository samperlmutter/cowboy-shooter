/// @description Add shader to player sprite
/// Code adapted from "Shaders in GameMaker Studio 2 - Damage Shader"
/// by GameMaker Casts; https://www.youtube.com/watch?v=V2mt_Oxj87c
if(was_hit){
	shader_set(sh_DamageFlashRed);
	draw_self();
	shader_set_uniform_f(sh_handle_timer, hit_timer);
	shader_reset();
}else {
	draw_self();
}

