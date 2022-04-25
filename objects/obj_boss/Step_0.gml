/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
if instance_exists(obj_player) {
	angle = point_direction(x, y, obj_player.x, obj_player.y)
	show_debug_message(angle)
	if angle >= 315 or angle <= 45 {
		heading = Heading.Right
	} else if angle > 45 and angle <= 135 {
		heading = Heading.Up
	} else if angle > 135 and angle <= 225 {
		heading = Heading.Left
	} else if angle > 225 and angle < 315 {
		heading = Heading.Down
	}
}

if !is_shooting {
	image_speed = 0
	switch (heading) {
			case Heading.Right:
				sprite_index = spr_boss0
				image_xscale = abs(image_xscale)
				break
			case Heading.Left:
				sprite_index = spr_boss0
				image_xscale = -abs(image_xscale)
				break
			case Heading.Up:
				sprite_index =spr_boss90
				image_xscale = abs(image_xscale)
				break
			case Heading.Down:
				sprite_index = spr_boss270
				image_xscale = abs(image_xscale)
				break
	}
}



if distance_to_object(obj_player) <= 500 and can_shoot {
	is_shooting = true
	can_shoot = false
	alarm[0] = 90
	image_speed = 1
	image_index = 0
	
	bullet_x = 0
	bullet_y = 0
	switch (heading) {
			case Heading.Right:
				sprite_index = spr_bossAttack0
				image_xscale = abs(image_xscale)
				bullet_x = x + 12
				bullet_y = y + 3
				break
			case Heading.Left:
				sprite_index = spr_bossAttack0
				image_xscale = -abs(image_xscale)
				bullet_x = x - 12
				bullet_y = y + 3
				break
			case Heading.Up:
				sprite_index =spr_bossAttack90
				image_xscale = abs(image_xscale)
				bullet_x = x + 36
				bullet_y = y - 24
				break
			case Heading.Down:
				sprite_index = spr_bossAttack270
				image_xscale = abs(image_xscale)
				bullet_x = x - 28
				bullet_y = y + 28
				break
		}
}

if is_shooting and image_index == 6 {
		scr_shootBullet2(self, bullet_x, bullet_y)
}
if is_shooting and image_index == 10 {
	is_shooting = false
	image_speed = 0
}