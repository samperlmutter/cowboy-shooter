/// @description shoot a bullet
// You can write your code in this editor
if !isShooting and ammo > 0 {
	switch (heading) {
		case Heading.Right:
			sprite_index = spr_playerShoot0
			image_xscale = abs(image_xscale)
			bulletX = x + 50
			bulletY = y + 4
			break
		case Heading.Left:
			sprite_index = spr_playerShoot0
			image_xscale = -abs(image_xscale)
			bulletX = x - 50
			bulletY = y + 4
			break
		case Heading.Up:
			sprite_index = spr_playerShoot90
			image_xscale = abs(image_xscale)
			bulletX = x + 24
			bulletY = y - 24
			break
		case Heading.Down:
			sprite_index = spr_playerShoot270
			image_xscale = abs(image_xscale)
			bulletX = x - 20
			bulletY = y + 38
			break
		case Heading.UpRight:
			sprite_index = spr_playerShoot45
			image_xscale = abs(image_xscale)
			bulletX = x + 46
			bulletY = y - 19
			break
		case Heading.DownRight:
			sprite_index = spr_playerShoot315
			image_xscale = abs(image_xscale)
			bulletX = x + 19
			bulletY = y + 34
			break
		case Heading.UpLeft:
			sprite_index = spr_playerShoot45
			image_xscale = -abs(image_xscale)
			bulletX = x - 46
			bulletY = y - 19
			break
		case Heading.DownLeft:
			sprite_index = spr_playerShoot315
			image_xscale = -abs(image_xscale)
			bulletX = x - 19
			bulletY = y + 34
			break
	}
	image_speed = 1
	isShooting = true
	ammo -= 1
}