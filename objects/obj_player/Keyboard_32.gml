/// @description shoot a bullet
// You can write your code in this editor
if !isShooting {
	switch (heading) {
		case Heading.Right:
			sprite_index = spr_playerShoot0
			image_xscale = abs(image_xscale)
			break
		case Heading.Left:
			sprite_index = spr_playerShoot0
			image_xscale = -abs(image_xscale)
			break
		case Heading.Up:
			sprite_index = spr_playerShoot90
			image_xscale = abs(image_xscale)
			break
		case Heading.Down:
			sprite_index = spr_playerShoot270
			image_xscale = abs(image_xscale)
			break
		case Heading.UpRight:
			sprite_index = spr_playerShoot45
			image_xscale = abs(image_xscale)
			break
		case Heading.DownRight:
			sprite_index = spr_playerShoot315
			image_xscale = abs(image_xscale)
			break
		case Heading.UpLeft:
			sprite_index = spr_playerShoot45
			image_xscale = -abs(image_xscale)
			break
		case Heading.DownLeft:
			sprite_index = spr_playerShoot315
			image_xscale = -abs(image_xscale)
			break
	}
	image_speed = 1
	isShooting = true
}