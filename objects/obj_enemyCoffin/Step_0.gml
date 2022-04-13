/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(obj_player) < 350)
{
	speed = 1
	direction = point_direction(x,y,obj_player.x,obj_player.y)
	
	if(obj_player.x>x){
		heading=Heading.Right
	}else{
		heading=Heading.Left	
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
}
else
{
	image_index = 0
	speed = 0
	direction = 0
}

if(distance_to_object(obj_player) <= 140)
{
	switch (heading) 
		{
			case Heading.Right:
				sprite_index = spr_enemyCoffinAttack0
				image_xscale = abs(image_xscale)
				break
			case Heading.Left:
				sprite_index = spr_enemyCoffinAttack0
				image_xscale = -abs(image_xscale)
				break
			case Heading.Up:
				sprite_index =spr_enemyCoffinAttack90
				image_xscale = abs(image_xscale)
				break
			case Heading.Down:
				sprite_index = spr_enemyCoffinAttack270
				image_xscale = abs(image_xscale)
				break
		}
}