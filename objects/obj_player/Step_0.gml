/// @description Insert description here

x = clamp(x, sprite_width/2, room_width-sprite_width/2);
y = clamp(y, sprite_height/2, room_height-sprite_height/2);

if !isShooting {
	if keyboard_check(vk_right) {
		x = clamp(x + 4, sprite_xoffset, room_width - sprite_xoffset)
		heading = Heading.Right
	}
	if keyboard_check(vk_left) {
		x = clamp(x - 4, sprite_xoffset, room_width - sprite_xoffset)
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

	// stop walking
	if not (keyboard_check(vk_up) or keyboard_check(vk_down) or keyboard_check(vk_right) or keyboard_check(vk_left)) {
		image_speed = 0
		image_index = 0
	} else {
		image_speed = 1
	}
}
// shoot bullet
else {
	if image_index = 3 {
		scr_shootBullet(self, bulletX, bulletY)
	}
}

if(was_hit) {
	hit_timer += 1;
	
	if(hit_timer > hit_release) {
		was_hit = false;
	}
} else {
	hit_timer = 0;
}

if x > 6560 and room == Room1 {
	room_goto_next()
}