/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < 200)
{
speed = 3
direction = point_direction(x,y,obj_player.x,obj_player.y)
}
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