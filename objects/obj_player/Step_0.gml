/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) {
	//x = clamp(x + 4, sprite_xoffset, room_width - sprite_xoffset)
	heading = Heading.Right
	sprite_index = spr_player90
}
if keyboard_check(vk_left) {
	//x = clamp(x - 4, sprite_xoffset, room_width - sprite_xoffset)
	heading = Heading.Left
	sprite_index = spr_player90
}
if keyboard_check(vk_up) {
	y = clamp(y - 4, sprite_yoffset, room_height - sprite_yoffset)
	heading = Heading.Up
	sprite_index = spr_player0
}
if keyboard_check(vk_down) {
	y = clamp(y + 4, sprite_yoffset, room_height - sprite_yoffset)
	heading = Heading.Down
	sprite_index = spr_player180
}

if keyboard_check(vk_right) and keyboard_check(vk_up) {
	heading = Heading.UpRight
	sprite_index = spr_player45
} else if keyboard_check(vk_left) and keyboard_check(vk_up) {
	heading = Heading.UpLeft
} else if keyboard_check(vk_right) and keyboard_check(vk_down) {
	heading = Heading.DownRight
	sprite_index = spr_player135
} else if keyboard_check(vk_left) and keyboard_check(vk_down) {
	heading = Heading.DownLeft
}