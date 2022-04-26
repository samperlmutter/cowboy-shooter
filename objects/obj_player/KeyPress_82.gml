/// @description Reload gun
// You can write your code in this editor
ammo = 6
if(!audio_is_playing(snd_reload)) {
	audio_play_sound(snd_reload, 1, false)
}
