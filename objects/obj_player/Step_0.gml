/// @description Insert description here
// You can write your code in this editor
if keyboard_check(vk_right) {
	//x = clamp(x + 4, sprite_xoffset, room_width - sprite_xoffset)
	heading = Heading.Right
	//sprite_index = spr_player90
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

switch (heading) {
	case Heading.Right:
		sprite_index = spr_player0
		image_xscale = abs(image_xscale)
		break
	case Heading.Left:
		sprite_index = spr_player0
		image_xscale = -abs(image_xscale)
		break
	case Heading.Up:
		sprite_index = spr_player90
		image_xscale = abs(image_xscale)
		break
	case Heading.Down:
		sprite_index = spr_player270
		image_xscale = abs(image_xscale)
		break
	case Heading.UpRight:
		sprite_index = spr_player45
		image_xscale = abs(image_xscale)
		break
	case Heading.DownRight:
		sprite_index = spr_player315
		image_xscale = abs(image_xscale)
		break
	case Heading.UpLeft:
		sprite_index = spr_player45
		image_xscale = -abs(image_xscale)
		break
	case Heading.DownLeft:
		sprite_index = spr_player315
		image_xscale = -abs(image_xscale)
		break
}

if not (keyboard_check(vk_up) or keyboard_check(vk_down) or keyboard_check(vk_right) or keyboard_check(vk_left)) {
	image_speed = 0
	image_index = 0
} else {
	image_speed = 1
}