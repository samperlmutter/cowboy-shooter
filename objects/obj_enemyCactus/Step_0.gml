/// @description Insert description here

if (distance_to_object(obj_player) < 500)
{
	speed = 2
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	// TODO: change heading based on angle to player
	
	if (obj_player.x > x) {
		heading=Heading.Right
	} else {
		heading=Heading.Left	
	}
	switch (heading) 
		{
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
else
{
	image_index = 0
	speed = 0
	direction = 0
}

if(distance_to_object(obj_player) <= 200)
{
	speed = 0
	
	e_x = 0
	e_y = 0
	switch (heading)
		{
			case Heading.Right:
				sprite_index = spr_enemyCactusShoot0
				image_xscale = abs(image_xscale)
				e_x = x + sprite_xoffset
				e_y = y
				break
			case Heading.Left:
				sprite_index = spr_enemyCactusShoot0
				image_xscale = -abs(image_xscale)
				e_x = x - sprite_xoffset
				e_y = y
				break
			case Heading.Up:
				sprite_index =spr_enemyCactusShoot90
				image_xscale = abs(image_xscale)
				e_x = x
				e_y = y - sprite_xoffset
				break
			case Heading.Down:
				sprite_index = spr_enemyCactusShoot270
				image_xscale = abs(image_xscale)
				e_x = x
				e_y = y + sprite_xoffset
				break
		}
		inst = instance_place(e_x, e_y, obj_player)
		if inst != noone and image_index == 4 {
			inst.hp -= damage
			show_debug_message(damage)
		}
}