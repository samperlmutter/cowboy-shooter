if(instance_exists(obj_player)) {
	if (distance_to_object(obj_player) < 700) and (distance_to_object(obj_player) > 150)
	{
		speed = 1
		direction = point_direction(x,y,obj_player.x,obj_player.y)
	
		//change heading based on angle to player
		if direction >= 315 or direction <= 45 {
			heading = Heading.Right
		} else if direction > 45 and direction <= 135 {
			heading = Heading.Up
		} else if direction > 135 and direction <= 225 {
			heading = Heading.Left
		} else if direction > 225 and direction < 315 {
			heading = Heading.Down
		}
	
		switch (heading) 
			{
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
	else
	{
		image_index = 0
		speed = 0
		direction = 0
	}
	
	if distance_to_object(obj_player) <= 500 and can_shoot {
		speed = 0
		is_shooting = true
		can_shoot = false
		//alarm[0] = 90
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
	if is_shooting and image_index == 18 {
			scr_shootBullet2(self, bullet_x, bullet_y)
	}
	if is_shooting and image_index == 24 {
		is_shooting = false
		image_speed = 0
	}
}