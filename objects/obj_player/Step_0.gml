/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) {
	//x = clamp(x + 4, sprite_xoffset, room_width - sprite_xoffset)
	heading = Heading.Right
}
if keyboard_check(vk_left) {
	//x = clamp(x - 4, sprite_xoffset, room_width - sprite_xoffset)
	heading = Heading.Left
}
if keyboard_check(vk_up) {
	y = clamp(y - 4, sprite_yoffset, room_height - sprite_yoffset)
	heading = Heading.Up
}
if keyboard_check(vk_down) {
	y = clamp(y + 4, sprite_yoffset, room_height - sprite_yoffset)
	heading = Heading.Down
}

if keyboard_check(vk_right) and keyboard_check(vk_up) {
	heading = Heading.UpRight
} else if keyboard_check(vk_left) and keyboard_check(vk_up) {
	heading = Heading.UpLeft
} else if keyboard_check(vk_right) and keyboard_check(vk_down) {
	heading = Heading.DownRight
} else if keyboard_check(vk_left) and keyboard_check(vk_down) {
	heading = Heading.DownLeft
}