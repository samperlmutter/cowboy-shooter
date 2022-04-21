/// @description Insert description here
if(instance_exists(obj_player)){
	if (obj_player.x > x) {
	heading=Heading.Right
} else {
	heading=Heading.Left	
}

if !is_shooting {
	image_speed = 0
	switch (heading) {
			case Heading.Right:
				sprite_index = spr_enemyCactus0
				image_xscale = abs(image_xscale)
				break
			case Heading.Left:
				sprite_index = spr_enemyCactus0
				image_xscale = -abs(image_xscale)
				break
			case Heading.Up:
				sprite_index =spr_enemyCactus90
				image_xscale = abs(image_xscale)
				break
			case Heading.Down:
				sprite_index = spr_enemyCactus90
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
				sprite_index = spr_enemyCactusShoot0
				image_xscale = abs(image_xscale)
				bullet_x = x + 12
				bullet_y = y + 3
				break
			case Heading.Left:
				sprite_index = spr_enemyCactusShoot0
				image_xscale = -abs(image_xscale)
				bullet_x = x - 12
				bullet_y = y + 3
				break
			case Heading.Up:
				sprite_index =spr_enemyCactusShoot90
				image_xscale = abs(image_xscale)
				bullet_x = x + 9
				bullet_y = y - 6
				break
			case Heading.Down:
				sprite_index = spr_enemyCactusShoot270
				image_xscale = abs(image_xscale)
				bullet_x = x - 7
				bullet_y = y + 7
				break
		}
}

if is_shooting and image_index == 6 {
		scr_shootBullet(self, bullet_x, bullet_y)
}
if is_shooting and image_index == 10 {
	is_shooting = false
	image_speed = 0
}
}

