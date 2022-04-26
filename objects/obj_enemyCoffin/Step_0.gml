/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < 600)
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
	
	//if (obj_player.x > x) {
	//	heading=Heading.Right
	//} else {
	//	heading=Heading.Left	
	//}
	switch (heading) 
		{
			case Heading.Right:
				sprite_index = spr_enemyCoffin0
				image_xscale = abs(image_xscale)
				break
			case Heading.Left:
				sprite_index = spr_enemyCoffin0
				image_xscale = -abs(image_xscale)
				break
			case Heading.Up:
				sprite_index =spr_enemyCoffin90
				image_xscale = abs(image_xscale)
				break
			case Heading.Down:
				sprite_index = spr_enemyCoffin90
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

if(distance_to_object(obj_player) <= 140)
{
	e_x = 0
	e_y = 0
	switch (heading)
		{
			case Heading.Right:
				sprite_index = spr_enemyCoffinAttack0
				image_xscale = abs(image_xscale)
				e_x = x + sprite_xoffset
				e_y = y
				break
			case Heading.Left:
				sprite_index = spr_enemyCoffinAttack0
				image_xscale = -abs(image_xscale)
				e_x = x - sprite_xoffset
				e_y = y
				break
			case Heading.Up:
				sprite_index =spr_enemyCoffinAttack90
				image_xscale = abs(image_xscale)
				e_x = x
				e_y = y - sprite_xoffset
				break
			case Heading.Down:
				sprite_index = spr_enemyCoffinAttack270
				image_xscale = abs(image_xscale)
				e_x = x
				e_y = y + sprite_xoffset
				break
		}
		audio_play_sound(snd_coffinAttack,1,false)
		inst = instance_place(x, y, obj_player)
		if inst != noone and image_index == 4 {
			if(instance_exists(obj_player)) {
				if(inst.was_hit == false) {
					inst.was_hit = true;
				}
			}
			inst.hp -= damage
		}
}